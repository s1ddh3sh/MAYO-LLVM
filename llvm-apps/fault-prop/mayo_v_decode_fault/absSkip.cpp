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

// skip the load64 loop everytime in the while loop for keccak_inc_absorb for vinegar being always known 
//FIXME: llvmbmc not working : phi nodes non integers not supported.





class AbsSkip : public PassInfoMixin<AbsSkip> {
public:
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
    if (F.getName() != "keccak_inc_absorb")
      return PreservedAnalyses::all();
    bool modified = false;

    for (auto &BB : F) {
      for (auto &I : BB) {

        auto *storeInst = dyn_cast<StoreInst>(&I);
        if (!storeInst)
          continue;

        Value *storedVal = storeInst->getValueOperand();

        auto *xorInst = dyn_cast<BinaryOperator>(storedVal);
        if (!xorInst)
          continue;

        if (xorInst->getOpcode() != Instruction::Xor)
          continue;

        if (!xorInst->getType()->isIntegerTy(64))
          continue;

        Value *op0 = xorInst->getOperand(0);
        Value *op1 = xorInst->getOperand(1);

        Value *oldState = nullptr;

        // Identify which operand is the original state (load)
        if (isa<LoadInst>(op0))
          oldState = op0;
        else if (isa<LoadInst>(op1))
          oldState = op1;
        else
          continue; // not the pattern we want

        storeInst->setOperand(0, oldState);

        modified = true;
      }
    }

    if (modified)
      return PreservedAnalyses::none();

    return PreservedAnalyses::all();
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

int main(int argc, char **argv) {
  // if (argc < 3) {
  //   errs() << "Usage: loopSkip <input.ll> <mode>\n";
  //   errs() << "0 => loopSkip\n";
  //   errs() << "1 => funcSkip\n";
  //   return 1;
  // }
  if (argc < 2) {
    errs() << "Usage ./absSkip <input.ll>";
    return 1;
  }

  std::string inputFile = argv[1];
  // int mode = std::stoi(argv[2]);

  LLVMContext ctx;
  SMDiagnostic err;
  auto module = parseIRFile(inputFile, err, ctx);
  if (!module) {
    err.print("error", errs());
    return 1;
  }

  Function *target = module->getFunction("keccak_inc_absorb");
  if (!target) {
    std::cout << "Function not found" << std::endl;
    return 1;
  }

  auto funcModule = extractFunction(*module, target);
  if (!funcModule) {
    std::cout << "Failed to create extracted module" << std::endl;
    return 1;
  }

  if (Function *F = funcModule->getFunction("keccak_inc_absorb")) {
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
    // FPM.addPass(AbsSkip());
    MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
  }
  // {
  //   InlineParams IP;
  //   IP.DefaultThreshold = 10000;
  //   MPM.addPass(ModuleInlinerPass(IP));
  // }
  // constant-prop to resolve trip counts and unroll loops to eliminate phi
  // nodes
  {
    FunctionPassManager FPM;
    FPM.addPass(LoopSimplifyPass());
    FPM.addPass(LCSSAPass());
    FPM.addPass(createFunctionToLoopPassAdaptor(LoopRotatePass()));
    FPM.addPass(createFunctionToLoopPassAdaptor(IndVarSimplifyPass()));

    FPM.addPass(SCCPPass());
    FPM.addPass(PromotePass());

    // Unroll loops to eliminate phi nodes that llvmbmc doesn't support
    {
      LoopUnrollOptions options;
      options.setFullUnrollMaxCount(1024);
      options.setRuntime(false);
      options.setUpperBound(true);
      FPM.addPass(LoopUnrollPass(options));

    }

    FPM.addPass(SimplifyCFGPass());
    FPM.addPass(InstCombinePass());

    MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
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
  dump_module(*funcModule, "../original.ll");
  {
    FunctionPassManager FPM;
    FPM.addPass(AbsSkip());
    // After modification, clean up dead code and pointer phi nodes
    FPM.addPass(PromotePass());
    FPM.addPass(SCCPPass());
    FPM.addPass(CorrelatedValuePropagationPass());
    FPM.addPass(InstCombinePass());
    FPM.addPass(SimplifyCFGPass());
    MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
  }
  // constant-prop to resolve trip counts
  {
    FunctionPassManager FPM;
    FPM.addPass(LoopSimplifyPass());
    FPM.addPass(LCSSAPass());
    FPM.addPass(createFunctionToLoopPassAdaptor(LoopRotatePass()));
    FPM.addPass(createFunctionToLoopPassAdaptor(IndVarSimplifyPass()));
    FPM.addPass(SCCPPass());
    FPM.addPass(PromotePass());
    MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
  }

  MPM.addPass(GlobalOptPass());

  MPM.run(*funcModule, MAM);
  if (verifyModule(*funcModule, &errs())) {
    errs() << "Fault module has invalid IR\n";
  } else {
    dump_module(*funcModule, "../absSkip.ll");
    outs() << "Wrote ../absSkip.ll\n";
  }

  run_command(
      "../llvmbmc ../original.ll --dump-solver-query -f keccak_inc_absorb");
  run_command("cp /tmp/test.smt2 ../correct.smt2");

  run_command(
      "../llvmbmc ../absSkip.ll --dump-solver-query -f keccak_inc_absorb");
  run_command("cp /tmp/test.smt2 ../absSkip.smt2");

  return 0;
}