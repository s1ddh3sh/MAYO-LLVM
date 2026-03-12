// #include "z3++.h"
#include "llvm/Analysis/DDG.h"
#include "llvm/IR/Analysis.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Analysis/DependenceGraphBuilder.h"

#include <map>
#include <queue>
#include <set>

using namespace llvm;
using namespace std;

enum class Level : int { Public = 0, EphSecret = 1, Secret = 2 };

Level join(Level a, Level b) { return (Level)max((int)a, (int)b); }

StringRef levelStr(Level l) {
  switch (l) {
  case Level::Public:
    return "Public";
  case Level::EphSecret:
    return "EphSecret";
  case Level::Secret:
    return "Secret";
  }
  return "";
}

class LevelPropPass : public PassInfoMixin<LevelPropPass> {

public:
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
    ddg(M);
    return PreservedAnalyses::all();
  }

private:
  void ddg(Module &M) {
    RootDDGNode N;
    
  }
};

int main() {
  LLVMContext ctx;
  SMDiagnostic err;
  auto module = parseIRFile("../mayo.ll", err, ctx);

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

  // Module Pass Manager
  ModulePassManager MPM;
  MPM.addPass(LevelPropPass());

  // Run
  MPM.run(*module, MAM);
  return 0;
}