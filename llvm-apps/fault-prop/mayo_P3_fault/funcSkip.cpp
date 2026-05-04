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

#include <cerrno>
#include <cstdio>
#include <cstdlib>
#include <iostream>

#include <map>
#include <memory>
#include <vector>

using namespace llvm;

class FuncSkip : public PassInfoMixin<FuncSkip> {
public:
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
    bool Changed = false;
    std::vector<Instruction *> ToRemove;

    for (auto &BB : F) {
      for (auto &I : BB) {
        // Check if the instruction is a call
        if (auto *CI = dyn_cast<CallBase>(&I)) {
          Function *Callee = CI->getCalledFunction();

          // Check if the callee exists and has the target name
          if (Callee && Callee->getName() == "P1_times_O") {

            if (!CI->getType()->isVoidTy()) {
              CI->replaceAllUsesWith(UndefValue::get(CI->getType()));
            }

            ToRemove.push_back(CI);
            Changed = true;
          }
        }
      }
    }

    // Safely remove the instructions after iteration
    for (auto *I : ToRemove) {
      I->eraseFromParent();
    }

    return Changed ? PreservedAnalyses::none() : PreservedAnalyses::all();
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
  if (argc < 2) {
    errs() << "Usage ./funcSkip <input.ll>";
    return 1;
  }

  std::string inputFile = argv[1];

  LLVMContext ctx;
  SMDiagnostic err;
  auto module = parseIRFile(inputFile, err, ctx);
  if (!module) {
    err.print("error", errs());
    return 1;
  }

  Function *target = module->getFunction("compute_P3");
  if (!target) {
    std::cout << "Function not found" << std::endl;
    return 1;
  }

  auto funcModule = extractFunction(*module, target);
  if (!funcModule) {
    std::cout << "Failed to create extracted module" << std::endl;
    return 1;
  }

  // Make mat_add externally visible so GlobalOptPass doesn't delete it
  if (Function *F = funcModule->getFunction("compute_P3")) {
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

    if (!F.isDeclaration()) {
      F.addFnAttr(Attribute::InlineHint);
    }
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

    // FPM.addPass(FuncSkip());

    FPM.addPass(SCCPPass());
    FPM.addPass(PromotePass());
    MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
  }

  // inline remaining function calls
  {
    InlineParams IP;
    IP.DefaultThreshold = 10000;
    MPM.addPass(ModuleInlinerPass(IP));
  }
  {
    // FunctionPassManager FPM;
    // // FPM.addPass(InstCombinePass());
    // FPM.addPass(SimplifyCFGPass());
    // MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
  }

  MPM.addPass(GlobalOptPass());

  MPM.run(*funcModule, MAM);

  // outs() << *funcModule;
  if (verifyModule(*funcModule, &errs())) {
    errs() << "Invalid IR\n";
    return 1;
  } else {
    outs() << "IR verified";
  }
  std::cout << "Dumping module..." << std::endl;
  dump_module(*funcModule, "../original.ll");

  // target = module->getFunction("compute_P3");
  // if (!target) {
  //   std::cout << "Function not found" << std::endl;
  //   return 1;
  // }

  funcModule = extractFunction(*module, target);
  if (!funcModule) {
    std::cout << "Failed to create extracted module" << std::endl;
    return 1;
  }

  // Make mat_add externally visible so GlobalOptPass doesn't delete it
  if (Function *F = funcModule->getFunction("compute_P3")) {
    F->setLinkage(GlobalValue::ExternalLinkage);
  }

  PB.registerModuleAnalyses(MAM);
  PB.registerCGSCCAnalyses(CGAM);
  PB.registerFunctionAnalyses(FAM);
  PB.registerLoopAnalyses(LAM);
  PB.crossRegisterProxies(LAM, FAM, CGAM, MAM);

  for (Function &F : *funcModule) {
    F.removeFnAttr(Attribute::NoInline);
    F.removeFnAttr(Attribute::OptimizeNone);

    if (!F.isDeclaration()) {
      F.addFnAttr(Attribute::InlineHint);
    }
  }

  {
    FunctionPassManager FPM;
    FPM.addPass(PromotePass());
    FPM.addPass(SCCPPass());
    FPM.addPass(CorrelatedValuePropagationPass());
    FPM.addPass(InstCombinePass());

    FPM.addPass(FuncSkip());
    FPM.addPass(SimplifyCFGPass());
    MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
  }
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

  // inline remaining function calls
  {
    InlineParams IP;
    IP.DefaultThreshold = 10000;
    MPM.addPass(ModuleInlinerPass(IP));
  }
  {
    // FunctionPassManager FPM;
    // FPM.addPass(InstCombinePass());
    // FPM.addPass(SimplifyCFGPass());
    // MPM.addPass(createModuleToFunctionPassAdaptor(std::move(FPM)));
  }

  MPM.addPass(GlobalOptPass());

  MPM.run(*funcModule, MAM);

  // outs() << *funcModule;
  if (verifyModule(*funcModule, &errs())) {
    errs() << "Invalid IR\n";
    return 1;
  } else {
    outs() << "IR verified";
  }
  std::cout << "Dumping module..." << std::endl;
  dump_module(*funcModule, "../funcSkip.ll");

  run_command("../llvmbmc ../original.ll --dump-solver-query -f compute_P3");
  run_command("cp /tmp/test.smt2 ../correct.smt2");
  // if (mode == LOOP_SKIP) {
  //   run_command("../llvmbmc ../loopSkip.ll --dump-solver-query -f mat_add");
  //   run_command("cp /tmp/test.smt2 ../loopFault.smt2");
  // } else {
    run_command("../llvmbmc ../funcSkip.ll --dump-solver-query -f compute_P3");
    run_command("cp /tmp/test.smt2 ../funcSkip.smt2");
  // }

  return 0;
}