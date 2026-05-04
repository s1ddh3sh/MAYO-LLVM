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

#include "llvm/Analysis/LoopAnalysisManager.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/IR/Analysis.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Support/Casting.h"
#include "llvm/Transforms/Utils/ValueMapper.h"

#include <cstdio>
#include <cstdlib>
#include <iostream>

#include <map>
#include <memory>
#include <vector>

using namespace llvm;

//skip the load64 loop everytime in the while loop for keccak_absorb
// instruction skip for

class FuncSkip : public PassInfoMixin<FuncSkip> {
public:
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
    auto &LI = FAM.getResult<LoopAnalysis>(F);
    auto &SE = FAM.getResult<ScalarEvolutionAnalysis>(F);

    // Collect all innermost loops across the entire function
    SmallVector<Loop *, 8> innermostLoops;
    std::function<void(Loop *)> collectInnermost = [&](Loop *L) {
      if (L->getSubLoops().empty()) {
        innermostLoops.push_back(L);
      } else {
        for (Loop *sub : L->getSubLoops())
          collectInnermost(sub);
      }
    };
    for (Loop *L : LI)
      collectInnermost(L);

    for (Loop *L : innermostLoops) {
      unsigned tripCount = SE.getSmallConstantTripCount(L);
      if (tripCount == 0) {
        errs() << "cannot determine trip count for innermost loop\n";
        continue;
      }

      errs() << "Innermost loop trip count: " << tripCount << "\n";
      addLabelNUnrollWithFuncSkip(F, L, LI, SE, tripCount, "m_vec_mul_add");
    }
    return PreservedAnalyses::none();
  }

  void addLabelNUnrollWithFuncSkip(Function &F, Loop *L, LoopInfo &LI,
                                   ScalarEvolution &SE, unsigned tripCount,
                                   const std::string &funcToSkip) {
    BasicBlock *header = L->getHeader();
    BasicBlock *latch = L->getLoopLatch();
    BasicBlock *preheader = L->getLoopPreheader();
    BasicBlock *exitBB = L->getUniqueExitBlock();

    if (!header || !latch || !preheader || !exitBB) {
      errs() << "Loop not in simplified form\n";
      return;
    }

    std::vector<BasicBlock *> origBlocks;
    for (BasicBlock *BB : L->blocks()) {
      origBlocks.push_back(BB);
    }

    BasicBlock *prevIterExit = preheader;
    ValueToValueMapTy cumulativeMap;

    for (unsigned i = 0; i < tripCount; i++) {
      // 1. Create start label
      BasicBlock *iterStart = BasicBlock::Create(
          F.getContext(), "iter_" + std::to_string(i) + "_start", &F);

      // 2. Resolve PHI nodes for this iteration
      std::vector<std::pair<PHINode *, Value *>> resolvedPhis;
      for (PHINode &PN : header->phis()) {
        Value *incoming;
        if (i == 0) {
          incoming = PN.getIncomingValueForBlock(preheader);
        } else {
          Value *latchVal = PN.getIncomingValueForBlock(latch);
          if (Value *mapped = cumulativeMap.lookup(latchVal))
            incoming = mapped;
          else
            incoming = latchVal;
        }
        cumulativeMap[&PN] = incoming;
        resolvedPhis.push_back({&PN, incoming});
      }

      // 3. Clone all blocks for this iteration
      std::vector<BasicBlock *> iterationCloned;
      ValueToValueMapTy iterationBlockMap;
      for (BasicBlock *BB : origBlocks) {
        BasicBlock *cloned =
            CloneBasicBlock(BB, cumulativeMap, ".iter" + std::to_string(i), &F);
        iterationCloned.push_back(cloned);
        iterationBlockMap[BB] = cloned;

        auto itOrig = BB->begin();
        auto itCloned = cloned->begin();
        while (itOrig != BB->end() && itCloned != cloned->end()) {
          iterationBlockMap[&*itOrig] = &*itCloned;
          cumulativeMap[&*itOrig] = &*itCloned;
          itOrig++;
          itCloned++;
        }
      }

      // 4. Resolve internal control flow in the cloned iteration
      for (BasicBlock *cloned : iterationCloned) {
        for (Instruction &I : *cloned) {
          RemapInstruction(&I, iterationBlockMap,
                           RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }

        // Skip function calls in the first iteration
        if (i == 0) {
          for (auto It = cloned->begin(); It != cloned->end();) {
            Instruction *I = &*It++;
            auto *CI = dyn_cast<CallInst>(I);
            if (!CI)
              continue;

            Function *callee = CI->getCalledFunction();
            if (callee && callee->getName() == funcToSkip) {
              outs() << "skipping fn call " << callee->getName() << "\n";
              if (!CI->getType()->isVoidTy()) {
                Value *v = Constant::getNullValue(CI->getType());
                CI->replaceAllUsesWith(v);
              }
              CI->eraseFromParent();
            }
          }
        }
      }

      // 5. Remove PHI nodes from the cloned header as they are now resolved
      for (auto &pair : resolvedPhis) {
        PHINode *origPhi = pair.first;
        Value *resolvedVal = pair.second;
        if (Value *clonedPhiVal = iterationBlockMap.lookup(origPhi)) {
          PHINode *clonedPhi = cast<PHINode>(clonedPhiVal);
          clonedPhi->replaceAllUsesWith(resolvedVal);
          clonedPhi->eraseFromParent();
        }
      }

      // 6. Create end label
      BasicBlock *iterEnd = BasicBlock::Create(
          F.getContext(), "iter_" + std::to_string(i) + "_end", &F);

      // 7. Connect control flow
      if (i == 0) {
        Instruction *prevTerm = preheader->getTerminator();
        BranchInst::Create(iterStart, preheader);
        prevTerm->eraseFromParent();
      } else {
        BranchInst::Create(iterStart, prevIterExit);
      }

      BranchInst::Create(iterationCloned.front(), iterStart);

      BasicBlock *clonedLatch = cast<BasicBlock>(iterationBlockMap[latch]);
      Instruction *latchTerm = clonedLatch->getTerminator();
      BranchInst::Create(iterEnd, clonedLatch);
      latchTerm->eraseFromParent();

      prevIterExit = iterEnd;
    }

    BranchInst::Create(exitBB, prevIterExit);
    for (auto it = exitBB->begin(); isa<PHINode>(it);) {
      PHINode *PN = cast<PHINode>(&*it++);
      Value *incomingVal = nullptr;

      for (unsigned j = 0; j < PN->getNumIncomingValues(); j++) {
        if (L->contains(PN->getIncomingBlock(j))) {
          incomingVal = PN->getIncomingValue(j);
          break;
        }
      }

      if (!incomingVal)
        continue;

      if (Value *mapped = cumulativeMap.lookup(incomingVal))
        incomingVal = mapped;

      while (true) {
        bool removed = false;
        for (unsigned j = 0; j < PN->getNumIncomingValues(); j++) {
          if (L->contains(PN->getIncomingBlock(j))) {
            PN->removeIncomingValue(j, false);
            removed = true;
            break;
          }
        }
        if (!removed)
          break;
      }

      PN->addIncoming(incomingVal, prevIterExit);
    }

    for (BasicBlock *BB : origBlocks) {
      BB->eraseFromParent();
    }
  }
};

void run_command(const std::string &cmd) {
  int ret = system(cmd.c_str());
  if (ret != 0) {
    std::cerr << "Command failed!\n";
    exit(1);
  }
}

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

    // *** KEY CHANGE: collect only innermost loops ***
    // The top-level LI iterator gives outermost loops; we need to recurse
    // to find innermost loops (those with no sub-loops), since those are
    // the ones containing the m_vec_mul_add call we want to unroll/skip.
    SmallVector<Loop *, 8> innermostLoops;
    std::function<void(Loop *)> collectInnermost = [&](Loop *L) {
      if (L->getSubLoops().empty()) {
        innermostLoops.push_back(L);
      } else {
        for (Loop *sub : L->getSubLoops())
          collectInnermost(sub);
      }
    };
    for (Loop *L : LI)
      collectInnermost(L);

    for (Loop *L : innermostLoops) {
      unsigned tripCount = SE.getSmallConstantTripCount(L);
      outs() << F.getName() << " (innermost loop)\n";
      if (tripCount == 0) {
        errs() << "cannot determine trip count for innermost loop\n";
        continue;
      }

      errs() << "Innermost loop trip count: " << tripCount << "\n";
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

    std::vector<BasicBlock *> origBlocks;
    for (BasicBlock *BB : L->blocks()) {
      origBlocks.push_back(BB);
    }

    BasicBlock *prevIterExit = preheader;
    ValueToValueMapTy cumulativeMap;

    for (unsigned i = 0; i < tripCount; i++) {
      // 1. Create start label
      BasicBlock *iterStart = BasicBlock::Create(
          F.getContext(), "iter_" + std::to_string(i) + "_start", &F);

      // 2. Resolve PHI nodes for this iteration
      std::vector<std::pair<PHINode *, Value *>> resolvedPhis;
      for (PHINode &PN : header->phis()) {
        Value *incoming;
        if (i == 0) {
          incoming = PN.getIncomingValueForBlock(preheader);
        } else {
          Value *latchVal = PN.getIncomingValueForBlock(latch);
          if (Value *mapped = cumulativeMap.lookup(latchVal))
            incoming = mapped;
          else
            incoming = latchVal;
        }
        cumulativeMap[&PN] = incoming;
        resolvedPhis.push_back({&PN, incoming});
      }

      // 3. Clone all blocks for this iteration
      std::vector<BasicBlock *> iterationCloned;
      ValueToValueMapTy iterationBlockMap;
      for (BasicBlock *BB : origBlocks) {
        BasicBlock *cloned =
            CloneBasicBlock(BB, cumulativeMap, ".iter" + std::to_string(i), &F);
        iterationCloned.push_back(cloned);
        iterationBlockMap[BB] = cloned;

        auto itOrig = BB->begin();
        auto itCloned = cloned->begin();
        while (itOrig != BB->end() && itCloned != cloned->end()) {
          iterationBlockMap[&*itOrig] = &*itCloned;
          cumulativeMap[&*itOrig] = &*itCloned;
          itOrig++;
          itCloned++;
        }
      }

      // 4. Resolve internal control flow in the cloned iteration
      for (BasicBlock *cloned : iterationCloned) {
        for (Instruction &I : *cloned) {
          RemapInstruction(&I, iterationBlockMap,
                           RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }
      }

      // 5. Remove PHI nodes from the cloned header as they are now resolved
      for (auto &pair : resolvedPhis) {
        PHINode *origPhi = pair.first;
        Value *resolvedVal = pair.second;
        if (Value *clonedPhiVal = iterationBlockMap.lookup(origPhi)) {
          PHINode *clonedPhi = cast<PHINode>(clonedPhiVal);
          clonedPhi->replaceAllUsesWith(resolvedVal);
          clonedPhi->eraseFromParent();
        }
      }

      // 6. Create end label
      BasicBlock *iterEnd = BasicBlock::Create(
          F.getContext(), "iter_" + std::to_string(i) + "_end", &F);

      // 7. Connect control flow
      if (i == 0) {
        Instruction *prevTerm = preheader->getTerminator();
        BranchInst::Create(iterStart, preheader);
        prevTerm->eraseFromParent();
      } else {
        BranchInst::Create(iterStart, prevIterExit);
      }

      BranchInst::Create(iterationCloned.front(), iterStart);

      BasicBlock *clonedLatch = cast<BasicBlock>(iterationBlockMap[latch]);
      Instruction *latchTerm = clonedLatch->getTerminator();
      BranchInst::Create(iterEnd, clonedLatch);
      latchTerm->eraseFromParent();

      prevIterExit = iterEnd;
    }

    BranchInst::Create(exitBB, prevIterExit);
    for (auto it = exitBB->begin(); isa<PHINode>(it);) {
      PHINode *PN = cast<PHINode>(&*it++);
      Value *incomingVal = nullptr;

      for (unsigned j = 0; j < PN->getNumIncomingValues(); j++) {
        if (L->contains(PN->getIncomingBlock(j))) {
          incomingVal = PN->getIncomingValue(j);
          break;
        }
      }

      if (!incomingVal)
        continue;

      if (Value *mapped = cumulativeMap.lookup(incomingVal))
        incomingVal = mapped;

      while (true) {
        bool removed = false;
        for (unsigned j = 0; j < PN->getNumIncomingValues(); j++) {
          if (L->contains(PN->getIncomingBlock(j))) {
            PN->removeIncomingValue(j, false);
            removed = true;
            break;
          }
        }
        if (!removed)
          break;
      }

      PN->addIncoming(incomingVal, prevIterExit);
    }

    for (BasicBlock *BB : origBlocks) {
      BB->eraseFromParent();
    }
  }
};

int main(int argc, char **argv) {
  if (argc < 3) {
    errs() << "Usage: loopSkip <input.ll> <mode>\n";
    errs() << "0 => loopSkip\n";
    errs() << "1 => funcSkip\n";
    return 1;
  }

  std::string inputFile = argv[1];
  int mode = std::stoi(argv[2]);

  LLVMContext ctx;
  SMDiagnostic err;
  auto module = parseIRFile(inputFile, err, ctx);
  if (!module) {
    err.print("error", errs());
    return 1;
  }

  Function *target = module->getFunction("mul_add_mat_x_m_mat");
  if (!target) {
    std::cout << "Function not found" << std::endl;
    return 1;
  }

  auto funcModule = extractFunction(*module, target);
  if (!funcModule) {
    std::cout << "Failed to create extracted module" << std::endl;
    return 1;
  }

  if (Function *F = funcModule->getFunction("mul_add_mat_x_m_mat")) {
    F->setLinkage(GlobalValue::ExternalLinkage);
  }

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

  if (mode == LOOP_SKIP) {
    for (Function &F : *funcModule) {
      F.removeFnAttr(Attribute::NoInline);
      F.removeFnAttr(Attribute::OptimizeNone);
      if (!F.isDeclaration())
        F.addFnAttr(Attribute::InlineHint);
    }
    // inline m_vec_mul_add so trip count of inner loop is visible
    {
      InlineParams IP;
      IP.DefaultThreshold = 10000;
      MPM.addPass(ModuleInlinerPass(IP));
    }
    // constant-prop to resolve trip counts
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

      // *** Unrolls ONLY the innermost loop (the k-loop containing
      // m_vec_mul_add) ***
      FPM.addPass(LabeledUnrollPass());

      FPM.addPass(SCCPPass());
      FPM.addPass(PromotePass());

      MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
    }
  } else if (mode == FUNC_SKIP) {
    for (Function &F : *funcModule) {
      F.removeFnAttr(Attribute::NoInline);
      F.removeFnAttr(Attribute::OptimizeNone);
      if (!F.isDeclaration())
        F.addFnAttr(Attribute::InlineHint);
    }
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

      // FuncSkip also updated to target innermost loops
      FPM.addPass(FuncSkip());

      FPM.addPass(SCCPPass());
      FPM.addPass(PromotePass());
      MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
    }
    {
      InlineParams IP;
      IP.DefaultThreshold = 10000;
      MPM.addPass(ModuleInlinerPass(IP));
    }
  } else {
    errs() << "Invalid mode. Use 0 or 1\n";
    return 1;
  }
  MPM.addPass(GlobalOptPass());

  MPM.run(*funcModule, MAM);

  if (verifyModule(*funcModule, &errs())) {
    errs() << "Invalid IR\n";
    return 1;
  } else {
    outs() << "IR verified\n";
  }

  std::cout << "Dumping module..." << std::endl;

  if (mode == LOOP_SKIP) {
    // dump_module(*funcModule, "../original.ll");
    if (verifyModule(*funcModule, &errs())) {
      errs() << "FUnc module has invalid IR\n";
    } else {
      dump_module(*funcModule, "../original.ll");
      outs() << "Wrote ../original.ll\n";
    }

    // --- Simulate loop-skip fault on the INNERMOST loop ---
    // After LabeledUnrollPass runs on the k-loop, the structure is:
    //   for.cond4.preheader -> iter_0_start -> [k=0 body] -> iter_0_end
    //                       -> iter_1_start -> [k=1 body] -> iter_1_end
    //                       ...
    //                       -> iter_N_end -> for.inc15
    //
    // To skip iteration 1 of the innermost loop:
    //   Redirect iter_0_end -> iter_2_start  (bypassing
    //   iter_1_start..iter_1_end) Remap any uses of iter_1's values in iter_2+
    //   to iter_0's values.

    auto faultModule = CloneModule(*funcModule);

    unsigned skipIter = 1;
    Function *faultFunc = faultModule->getFunction("mul_add_mat_x_m_mat");
    if (faultFunc) {
      std::string srcName = "iter_" + std::to_string(skipIter - 1) + "_end";
      std::string newTarget = "iter_" + std::to_string(skipIter + 1) + "_start";
      std::string skippedSuffix = ".iter" + std::to_string(skipIter);
      std::string prevSuffix = ".iter" + std::to_string(skipIter - 1);

      std::string skipStartName = "iter_" + std::to_string(skipIter) + "_start";
      std::string skipEndName = "iter_" + std::to_string(skipIter) + "_end";
      std::vector<BasicBlock *> skippedBlocks;
      BasicBlock *srcBB = nullptr, *newTargetBB = nullptr;
      bool inSkipped = false;

      for (BasicBlock &BB : *faultFunc) {
        if (BB.getName() == srcName)
          srcBB = &BB;
        if (BB.getName() == newTarget)
          newTargetBB = &BB;
        if (BB.getName() == skipStartName)
          inSkipped = true;
        if (inSkipped)
          skippedBlocks.push_back(&BB);
        if (BB.getName() == skipEndName)
          inSkipped = false;
      }

      if (srcBB && newTargetBB) {
        // Build remap: skipped-iter values -> prev-iter values
        // For the innermost (k) loop, the only inter-iteration value carried
        // forward is the induction variable (k itself, now constant-folded)
        // and any results from the loop body.  We remap by name suffix.
        std::map<Value *, Value *> remap;
        for (BasicBlock *BB : skippedBlocks) {
          for (Instruction &I : *BB) {
            std::string iName = I.getName().str();
            if (iName.empty())
              continue;

            size_t pos = iName.rfind(skippedSuffix);
            if (pos == std::string::npos)
              continue;

            std::string prevName = iName.substr(0, pos) + prevSuffix;

            for (BasicBlock &searchBB : *faultFunc) {
              for (Instruction &searchI : searchBB) {
                if (searchI.getName() == prevName) {
                  remap[&I] = &searchI;
                  break;
                }
              }
              if (remap.count(&I))
                break;
            }
          }
        }

        // Replace uses of skipped-iteration values outside the skipped blocks
        for (auto &[skippedVal, prevVal] : remap) {
          std::vector<Use *> usesToReplace;
          for (Use &U : skippedVal->uses()) {
            Instruction *user = dyn_cast<Instruction>(U.getUser());
            if (!user)
              continue;
            BasicBlock *userBB = user->getParent();
            bool isInSkipped = false;
            for (BasicBlock *sBB : skippedBlocks) {
              if (sBB == userBB) {
                isInSkipped = true;
                break;
              }
            }
            if (!isInSkipped)
              usesToReplace.push_back(&U);
          }
          for (Use *U : usesToReplace)
            U->set(prevVal);
        }

        // Redirect the branch: iter_0_end -> iter_2_start
        Instruction *term = srcBB->getTerminator();
        if (auto *br = dyn_cast<BranchInst>(term)) {
          BranchInst::Create(newTargetBB, srcBB);
          br->eraseFromParent();
          outs() << "Fault injected (innermost loop): " << srcName << " -> "
                 << newTarget << " (skipping k-iteration " << skipIter << ")\n";
        }
        for (BasicBlock *BB : skippedBlocks) {
          BB->dropAllReferences();
        }
        // *** THEN erase (safe now that no intra-dead-block uses remain) ***
        for (BasicBlock *BB : skippedBlocks) {
          BB->eraseFromParent();
        }

      } else {
        errs() << "Could not find blocks for fault injection";
        if (!srcBB)
          errs() << " (missing: " << srcName << ")";
        if (!newTargetBB)
          errs() << " (missing: " << newTarget << ")";
        errs() << "\n";
        errs() << "Available blocks:\n";
        for (BasicBlock &BB : *faultFunc)
          errs() << "  " << BB.getName() << "\n";
      }
    }

    if (verifyModule(*faultModule, &errs())) {
      errs() << "Fault module has invalid IR\n";
    } else {
      dump_module(*faultModule, "../loopSkip.ll");
      outs() << "Wrote ../loopSkip.ll\n";
    }
  } else {
    dump_module(*funcModule, "../funcSkip.ll");
  }

  run_command(
      "../llvmbmc ../original.ll --dump-solver-query -f mul_add_mat_x_m_mat");
  run_command("cp /tmp/test.smt2 ../correct.smt2");
  if (mode == LOOP_SKIP) {
    run_command(
        "../llvmbmc ../loopSkip.ll --dump-solver-query -f mul_add_mat_x_m_mat");
    run_command("cp /tmp/test.smt2 ../loopFault.smt2");
  } else {
    run_command(
        "../llvmbmc ../funcSkip.ll --dump-solver-query -f mul_add_mat_x_m_mat");
    run_command("cp /tmp/test.smt2 ../funcSkip.smt2");
  }

  return 0;
}