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

struct Taint
{
    Level level = Level::Public;
};

class LevelPropPass : public PassInfoMixin<LevelPropPass>
{
    map<Value *, Taint> regLevels;
    map<Value *, Taint> memLevels;
    map<Function *, Level> funcLevel;

    static bool printed;

public:
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &)
    {
        bool changed = true;

        while (changed)
        {
            changed = false;

            for (Function &F : M)
            {
                if (F.isDeclaration())
                    continue;
                changed |= analyzeFunc(F);
            }
        }
        errs() << "\n Secret fn \n";
        for (auto &it : funcLevel)
        {
            if (it.second != Level::Public)
            {
                outs() << "FUnction : " << it.first->getName() << "\n";
            }
        }
        if (!printed)
        {
            printed = true;
            outs() << "\n=== Register Levels ===\n";
            for (auto &it : regLevels)
            {
                outs() << "Value: ";
                it.first->print(outs());
                outs() << "  -> Level: " << (int)it.second.level << "\n";
            }

            outs() << "\n=== Memory Levels ===\n";
            for (auto &it : memLevels)
            {
                outs() << "Pointer: ";
                it.first->print(outs());
                outs() << "  -> Level: " << (int)it.second.level << "\n";
            }

            outs() << "\n=== Function Levels ===\n";
            for (auto &it : funcLevel)
            {
                outs() << "Function: " << it.first->getName()
                       << "  -> Level: " << (int)it.second << "\n";
            }
        }
        return PreservedAnalyses::all();
    }

private:
    Value *getBase(Value *ptr)
    {
        return getUnderlyingObject(ptr);
    }
    bool analyzeFunc(Function &F)
    {
        bool changed = false;

        Level funcLvl = Level::Public;

        for (Argument &arg : F.args())
        {
            Level lvl = regLevels[&arg].level;
            funcLvl = join(funcLvl, lvl);
        }

        if (funcLevel[&F] != funcLvl)
        {
            funcLevel[&F] = funcLvl;
            changed = true;
        }

        for (Instruction &I : instructions(F))
        {

            // load
            if (auto *L = dyn_cast<LoadInst>(&I))
            {
                Value *ptr = L->getPointerOperand();
                regLevels[&I].level = memLevels[ptr].level;
            }

            // store
            else if (auto *S = dyn_cast<StoreInst>(&I))
            {
                Value *val = S->getValueOperand();
                Value *ptr = S->getPointerOperand();

                memLevels[ptr].level = join(memLevels[ptr].level, regLevels[val].level);
            }
            // binOp
            else if (auto *B = dyn_cast<BinaryOperator>(&I))
            {
                regLevels[&I].level = join(regLevels[B->getOperand(0)].level, regLevels[B->getOperand(1)].level);
            }

            // fn call
            else if (auto *C = dyn_cast<CallInst>(&I))
            {
                Function *callee = C->getCalledFunction();
                if (!callee)
                    continue;

                handlefnCall(*C, *callee);

                regLevels[&I].level = funcLevel[callee];
            }
        }

        return changed;
    }

    void handlefnCall(CallInst &C, Function &callee)
    {
        string name = callee.getName().str();

        if (name == "mayo_keypair")
        {
            Value *sk = C.getArgOperand(2);
            memLevels[sk].level = Level::Secret;
        }
        else if (name == "mayo_expand_sk")
        {
            Value *esk = C.getArgOperand(2);
            memLevels[esk].level = Level::Secret;
        }

        else if (callee.getName() == "shake256")
        {

            Value *dst = C.getArgOperand(0);
            Value *src = C.getArgOperand(2); // input buffer

            Level inLevel = memLevels[getBase(src)].level;

            memLevels[getBase(dst)].level =
                join(memLevels[getBase(dst)].level, inLevel);
        }

        for (int i = 0; i < C.arg_size(); i++)
        {
            Value *arg = C.getArgOperand(i);
            Level arglevel = regLevels[arg].level;

            if (!callee.isDeclaration() && i < callee.arg_size())
            {
                auto calleeArg = callee.getArg(i);
                regLevels[calleeArg].level = join(regLevels[calleeArg].level, arglevel);
            }
        }
    }
};

bool LevelPropPass::printed = false;

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
}