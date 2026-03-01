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
    void printMaps()
    {
        outs() << "\n=== Function Sensitivity ===\n";

        for (auto &it : funcLevel)
        {
            outs() << it.first->getName() << " -> ";

            if (it.second == Level::Public)
                outs() << "Public";
            else if (it.second == Level::EphSecret)
                outs() << "EphSecret";
            else
                outs() << "Secret";

            outs() << "\n";
        }

        outs() << "\n";
    }

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

                if (auto *A = dyn_cast<AllocaInst>(&I))
                {
                    string name = A->getName().str();

                    if (name.find("sk") != string::npos || name.find("esk") != string::npos)
                    {
                        env.mem[A] = Level::Secret;
                    }

                    else if (name.find("Vdec") != string::npos || name.find("V") != string::npos)
                    {
                        env.mem[A] = Level::EphSecret;
                    }
                    else
                        env.mem[A] = Level::Public;
                }

                // gep
                else if (auto *G = dyn_cast<GetElementPtrInst>(&I))
                {
                    Value *base = getBase(G->getPointerOperand());

                    env.reg[&I] = env.reg[base];

                    env.mem[&I] = env.mem[base];
                }

                // load
                else if (auto *L = dyn_cast<LoadInst>(&I))
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
        Level memLvl = Level::Public;

        for (auto &it : env.mem)
        {
            memLvl = join(memLvl, it.second);
        }

        funcLvl = join(funcLvl, memLvl);
        funcLevel[F] = join(funcLevel[F], funcLvl);
        callStack.erase(F);

        // outs() << "\n--- Function: " << F->getName() << " ---\n";

        // for (auto &r : env.reg)
        // {
        //     outs() << "REG: ";
        //     r.first->print(outs());
        //     outs() << " -> Level : " << (int)r.second << "\n";
        // }

        // for (auto &m : env.mem)
        // {
        //     outs() << "MEM: ";
        //     m.first->print(outs());
        //     outs() << " -> Level : " << (int)m.second << "\n";
        // }

        return env;
    }

    void handleCall(CallInst &C, Env &callerEnv)
    {
        Function *callee = C.getCalledFunction();
        if (!callee)
            return;
        Env calleeEnv;

        if (callee->isDeclaration())
        {
            Level ret = Level::Public;

            for (int i = 0; i < C.arg_size(); i++)
            {
                ret = join(ret, callerEnv.reg[C.getArgOperand(i)]);
            }

            callerEnv.reg[&C] = ret;
            return;
        }

        for (int i = 0; i < C.arg_size(); i++)
        {
            Value *caller_arg = C.getArgOperand(i);
            Argument &callee_arg = *callee->getArg(i);

            calleeEnv.reg[&callee_arg] = callerEnv.reg[caller_arg];
            calleeEnv.mem[&callee_arg] = callerEnv.mem[getBase(caller_arg)];
        }

        calleeEnv = analyzeFunc(callee, calleeEnv);

        // merge back
        for (auto &it : calleeEnv.mem)
        {
            callerEnv.mem[it.first] = join(callerEnv.mem[it.first], it.second);
        }

        callerEnv.reg[&C] = calleeEnv.returnlevel;
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