#include "llvm/IR/Constants.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/Transforms/IPO/GlobalOpt.h"
#include "llvm/Transforms/InstCombine/InstCombine.h"
#include "llvm/Transforms/Scalar/CorrelatedValuePropagation.h"
#include "llvm/Transforms/Scalar/IndVarSimplify.h"
#include "llvm/Transforms/Scalar/LoopRotation.h"
#include "llvm/Transforms/Scalar/LoopUnrollPass.h"
#include "llvm/Transforms/Scalar/SCCP.h"
#include "llvm/Transforms/Scalar/SimplifyCFG.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/Mem2Reg.h"

#include <array>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <llvm-20/llvm/ADT/SmallVector.h>
#include <llvm-20/llvm/Analysis/ScalarEvolution.h>
#include <llvm-20/llvm/IR/Analysis.h>
#include <llvm-20/llvm/IR/BasicBlock.h>
#include <llvm-20/llvm/IR/Function.h>
#include <llvm-20/llvm/IR/InstrTypes.h>
#include <llvm-20/llvm/IR/Instruction.h>
#include <llvm-20/llvm/Support/Casting.h>
#include <llvm-20/llvm/Transforms/Utils/ValueMapper.h>

#include <memory>
#include <vector>

using namespace llvm;

void dump_module(Module &M, const std::string &filename) {
  std::error_code EC;
  raw_fd_ostream out(filename, EC);
  M.print(out, nullptr);
  out.close();
}

std::unique_ptr<Module> extractFunction(Module &M, Function *F) {
  auto newMod = CloneModule(M);

  std::set<std::string> keep;
  keep.insert(F->getName().str());

  std::function<void(Function *)> collectCallees = [&](Function *fn) {
    for (auto &BB : *fn) {
      for (auto &I : BB) {
        if (auto *call = dyn_cast<CallInst>(&I)) {
          Function *callee = call->getCalledFunction();
          if (callee && !callee->isDeclaration()) {
            if (keep.insert(callee->getName().str()).second) {
              collectCallees(callee);
            }
          }
        }
      }
    }
  };
  collectCallees(F);

  for (auto it = newMod->begin(); it != newMod->end();) {
    Function &F2 = *it++;
    if (F2.isDeclaration())
      continue;
    if (keep.find(F2.getName().str()) == keep.end()) {
      if (F2.use_empty())
        F2.eraseFromParent();
      else
        F2.deleteBody();
    }
  }

  return newMod;
}

class LabeledUnrollPass : public PassInfoMixin<LabeledUnrollPass> {
public:
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
    auto &LI = FAM.getResult<LoopAnalysis>(F);
    auto &SE = FAM.getResult<ScalarEvolutionAnalysis>(F);

    std::vector<Loop *> loops(LI.begin(), LI.end());
    for (Loop *L : loops) {
      unsigned tripCount = SE.getSmallConstantTripCount(L);
      if (tripCount == 0) {
        errs() << "cannot determine trip count\n";
        continue;
      }

      errs() << "Loop trip count: " << tripCount << "\n";
      addLabelNUnroll(F, L, LI, SE, tripCount);
    }
    return PreservedAnalyses::none();
  }

  void addLabelNUnroll(Function &F, Loop *L, LoopInfo &LI, ScalarEvolution &SE,
                       unsigned tripCount) {
    BasicBlock *header = L->getHeader();
    BasicBlock *latch = L->getLoopLatch();
    BasicBlock *preheader = L->getLoopPreheader();
    BasicBlock *exitBB = L->getUniqueExitBlock();

    if (!header || !latch || !preheader || !exitBB) {
      errs() << "Loop not in simplified form\n";
      return;
    }
    SmallVector<BasicBlock *, 8> origBlocks;
    for (BasicBlock *BB : L->blocks()) {
      origBlocks.push_back(BB);
    }

    BasicBlock *prevIterExit = preheader;
    ValueToValueMapTy cumulativeMap;

    for (unsigned i = 0; i < tripCount; i++) {
      std::vector<BasicBlock *> clonedBBs;

      for (BasicBlock *BB : origBlocks) {
        BasicBlock *cloned = CloneBasicBlock(
            BB, cumulativeMap, std::string(".iter") + std::to_string(i), &F);
        clonedBBs.push_back(cloned);
        cumulativeMap[BB] = cloned;
      }
      // outs() << cumulativeMap.size() << '\n';

      clonedBBs.front()->setName(std::string("iter_") + std::to_string(i) +
                                 "_start");

      // Resolve phi nodes in the cloned header BEFORE remapping
      for (auto it = clonedBBs.front()->begin(); isa<PHINode>(it);) {
        PHINode *phi = cast<PHINode>(it++);
        Value *incoming;
        if (i == 0) {
          incoming = phi->getIncomingValueForBlock(preheader);
        } else {
          Value *latchVal = phi->getIncomingValueForBlock(latch);
          if (Value *mapped = cumulativeMap.lookup(latchVal))
            incoming = mapped;
          else
            incoming = latchVal;
        }
        phi->replaceAllUsesWith(incoming);
        phi->eraseFromParent();
      }

      // Remap all instructions
      for (BasicBlock *cloned : clonedBBs) {
        for (Instruction &I : *cloned) {
          RemapInstruction(&I, cumulativeMap,
                           RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }
      }

      // Wire previous exit → this iteration's entry
      Instruction *prevTerm = prevIterExit->getTerminator();
      BranchInst::Create(clonedBBs.front(), prevTerm);
      prevTerm->eraseFromParent();

      // This iteration's exit = cloned latch
      prevIterExit = cast<BasicBlock>(cumulativeMap[latch]);
    }

    Instruction *lastTerm = prevIterExit->getTerminator();
    BranchInst::Create(exitBB, lastTerm);
    lastTerm->eraseFromParent();

    // Remove original loop blocks
    for (BasicBlock *BB : origBlocks)
      BB->dropAllReferences();
    for (BasicBlock *BB : origBlocks)
      BB->eraseFromParent();
  }
};

int main(int argc, char **argv) {
  std::string inputFile = argv[1];

  LLVMContext ctx;
  SMDiagnostic err;
  auto module = parseIRFile(inputFile, err, ctx);
  if (!module) {
    err.print("error", errs());
    return 1;
  }

  Function *target = module->getFunction("lincomb");
  if (!target) {
    errs() << "Function 'lincomb' not found in input module\n";
    errs() << "Available functions:\n";
    for (Function &F : *module) {
      errs() << "  " << F.getName() << (F.isDeclaration() ? " [decl]" : "")
             << "\n";
    }
    return 1;
  }

  auto funcModule = extractFunction(*module, target);
  if (!funcModule) {
    errs() << "Failed to create extracted module\n";
    return 1;
  }
  for (Function &F : *funcModule) {
    F.removeFnAttr(Attribute::NoInline);
    F.removeFnAttr(Attribute::OptimizeNone);

    if (!F.isDeclaration()) {
      F.addFnAttr(Attribute::InlineHint);
    }
  }
  {
    LoopAnalysisManager LAM;
    FunctionAnalysisManager FAM;
    CGSCCAnalysisManager CGAM;
    ModuleAnalysisManager MAM;

    PassBuilder PB;
    PB.registerModuleAnalyses(MAM);
    PB.registerCGSCCAnalyses(CGAM);
    PB.registerFunctionAnalyses(FAM);
    PB.registerLoopAnalyses(LAM);
    PB.crossRegisterProxies(LAM, FAM, CGAM, MAM);

    ModulePassManager MPM;
    // inline
    {
      InlineParams IP;
      IP.DefaultThreshold = 10000;
      MPM.addPass(ModuleInlinerPass(IP));
    }

    // constant-prop
    {
      FunctionPassManager FPM;
      FPM.addPass(PromotePass());
      FPM.addPass(SCCPPass());
      FPM.addPass(CorrelatedValuePropagationPass());
      FPM.addPass(InstCombinePass());
      FPM.addPass(SimplifyCFGPass());
      MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
    }
    {
      FunctionPassManager FPM;
      FPM.addPass(LoopSimplifyPass());
      FPM.addPass(LCSSAPass());
      FPM.addPass(createFunctionToLoopPassAdaptor(LoopRotatePass()));
      FPM.addPass(createFunctionToLoopPassAdaptor(IndVarSimplifyPass()));

      //   LoopUnrollOptions options;
      //   options.setFullUnrollMaxCount(1024);
      //   options.setRuntime(false);
      //   options.setUpperBound(true);
      //   FPM.addPass(LoopUnrollPass(options));

      FPM.addPass(LabeledUnrollPass());

      FPM.addPass(InstCombinePass());
      FPM.addPass(SCCPPass());
      FPM.addPass(SimplifyCFGPass());
      FPM.addPass(PromotePass());

      MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
    }

    MPM.addPass(GlobalOptPass());

    MPM.run(*funcModule, MAM);
  }

  dump_module(*funcModule, "../original.ll");
  return 0;
}