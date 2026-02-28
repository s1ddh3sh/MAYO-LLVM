#include "z3++.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/TargetParser/Host.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Analysis/CFGPrinter.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/InstIterator.h"

#include "llvm/Analysis/MemoryBuiltins.h"
#include "llvm/Analysis/ValueTracking.h"

#include <iostream>
#include <map>
#include <set>

using namespace llvm;
using namespace std;

enum class Level
{
    Public = 0,
    EphSecret = 1,
    Secret = 2
};

Level join(Level a, Level b)
{
    return (Level)max((int)a, (int)b);
}

struct Env
{
    map<Value *, Level> reg;
    map<Value *, Level> mem;
    Level returnlevel = Level::Public;
};

class LevelPropPass : public PassInfoMixin<LevelPropPass>
{
    map<Function *, Level> funcLevel;
    set<Function *> callStack;

public:
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &)
    {
        Function *main = M.getFunction("main");

        Env global;
        analyzeFunc(main, global);
        printMaps();
        return PreservedAnalyses::all();
    }

private:
    Value *getBase(Value *V)
    {
        while (true)
        {
            if (auto *G = dyn_cast<GetElementPtrInst>(V))
                V = G->getPointerOperand();
            else if (auto *B = dyn_cast<BitCastInst>(V))
                V = B->getOperand(0);
            else
                break;
        }
        return V;
    }

    Env analyzeFunc(Function *F, Env env)
    {
        if (callStack.count(F))
            return env;

        callStack.insert(F);

        Level funcLvl = Level::Public;

        for (auto &arg : F->args())
        {
            funcLvl = join(funcLvl, env.reg[&arg]);
        }

        for (auto &BB : *F)
        {
            for (auto &I : BB)
            {
                // load
                if (auto *L = dyn_cast<LoadInst>(&I))
                {
                    Value *ptr = L->getPointerOperand();
                    env.reg[&I] = env.mem[getBase(ptr)];
                }

                // store
                else if (auto *S = dyn_cast<StoreInst>(&I))
                {
                    Value *src = S->getValueOperand();
                    Value *dst = S->getPointerOperand();

                    env.mem[getBase(dst)] = join(env.mem[getBase(dst)], env.reg[src]);
                }

                // binop
                else if (auto *B = dyn_cast<BinaryOperator>(&I))
                {
                    env.reg[&I] = join(env.reg[B->getOperand(0)], env.reg[B->getOperand(1)]);
                }

                else if (auto *C = dyn_cast<CallInst>(&I))
                {
                    handleCall(*C, env);
                }

                else if (auto *R = dyn_cast<ReturnInst>(&I))
                {
                    if (R->getReturnValue())
                    {
                        env.returnlevel = env.reg[R->getReturnValue()];
                    }
                }
                funcLvl = join(funcLvl, env.reg[&I]);
            }
        }
        funcLevel[F] = join(funcLevel[F], funcLvl);
        callStack.erase(F);
        return env;
    }

    void handleCall(CallInst &C, Env &callerEnv)
    {
        Function *callee = C.getCalledFunction();
        if (!callee)
            return;

        string name = callee->getName().str();

        
    }
};

int main()
{
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

    // -------------------------------
    // Module Pass Manager
    // -------------------------------
    ModulePassManager MPM;
    MPM.addPass(LevelPropPass());

    // Run
    MPM.run(*module, MAM);
    return 0;
}