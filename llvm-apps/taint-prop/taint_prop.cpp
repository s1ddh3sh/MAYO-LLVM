// #include "z3++.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IRReader/IRReader.h"

#include <map>
#include <set>
#include <queue>

using namespace llvm;
using namespace std;

enum class Level : int
{
    Public = 0,
    EphSecret = 1,
    Secret = 2
};

Level join(Level a, Level b)
{
    return (Level)max((int)a, (int)b);
}

StringRef levelStr(Level l)
{
    switch (l)
    {
    case Level::Public:
        return "Public";
    case Level::EphSecret:
        return "EphSecret";
    case Level::Secret:
        return "Secret";
    }
    return "?";
}

typedef CallInst *Context;

class LevelPropPass : public PassInfoMixin<LevelPropPass>
{

    map<pair<Value *, Context>, Level> taintMap;

    map<Function *, Level> funcLevel;
    queue<pair<Instruction *, Context>> worklist;

    map<Value *, set<pair<LoadInst *, Context>>> memoryUsers;
    map<Context, Context> parentCtx;

public:
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &)
    {
        Function *main = M.getFunction("main");
        initialTaint(M);
        pushToWorklist(main, nullptr);

        while (!worklist.empty())
        {
            auto [I, ctx] = worklist.front();
            worklist.pop();

            if (auto *LI = dyn_cast<LoadInst>(I))
                handleLoad(LI, ctx);
            else if (auto *SI = dyn_cast<StoreInst>(I))
                handleStore(SI, ctx);
            else if (auto *CI = dyn_cast<CallInst>(I))
                handleCall(CI, ctx);
            else if (auto *RI = dyn_cast<ReturnInst>(I))
                handleReturn(RI, ctx);
            else if (auto *GEP = dyn_cast<GetElementPtrInst>(I))
                handleGEP(GEP, ctx);
            // else if (auto *AI = dyn_cast<AllocaInst>(I))
            //     handleAlloca(AI, ctx);
            else if (auto *B = dyn_cast<BinaryOperator>(I))
                handleBinaryOp(B, ctx);
        }
        printMaps();
        return PreservedAnalyses::all();
    }

private:
    void printMaps()
    {
        for (auto &[F, l] : funcLevel)
        {
            outs() << F->getName() << " -> " << levelStr(l) << "\n";
        }
        outs() << "\n";
    }
    void initialTaint(Module &M)
    {
        for (Function &F : M)
        {
            for (Instruction &I : instructions(F))
            {
                if (auto *A = dyn_cast<AllocaInst>(&I))
                {
                    StringRef name = A->getName().str();
                    if (name == "O" || name == "seed_sk")
                        updateLvl(&I, nullptr, Level::Secret);
                    else if (name == "V" || name == "Vdec")
                        updateLvl(&I, nullptr, Level::EphSecret);
                    else
                        updateLvl(&I, nullptr, Level::Public);
                }
            }
        }
    }

    bool updateLvl(Value *V, Context c, Level newLvl)
    {
        Level oldL = taintMap[{V, c}];
        Level joined = join(oldL, newLvl);
        if (joined != oldL)
        {
            taintMap[{V, c}] = joined;
            return true;
        }
        return false;
    }

    void handleBinaryOp(BinaryOperator *BO, Context ctx)
    {
        Level L1 = taintMap[{BO->getOperand(0), ctx}];
        Level L2 = taintMap[{BO->getOperand(1), ctx}];
        if (updateLvl(BO, ctx, join(L1, L2)))
        {
            push_deps(BO, ctx);
        }
    }

    void handleLoad(LoadInst *L, Context ctx)
    {
        Value *ptr = L->getPointerOperand();
        memoryUsers[ptr].insert({L, ctx});

        Level ptrLevel = taintMap[{ptr, ctx}];
        if (updateLvl(L, ctx, ptrLevel))
        {
            push_deps(L, ctx);
            updateFuncLvl(L->getFunction(), ptrLevel);
        }
    }

    void handleStore(StoreInst *S, Context ctx)
    {
        Value *val = S->getValueOperand();
        Value *ptr = S->getPointerOperand();

        Level valLvl = taintMap[{val, ctx}];
        if (updateLvl(ptr, ctx, valLvl))
        {
            updateFuncLvl(S->getFunction(), valLvl);
            for (auto &loadPair : memoryUsers[ptr])
            {
                worklist.push(loadPair);
            }
        }
    }

    void handleGEP(GetElementPtrInst *G, Context ctx)
    {
        Level baseL = taintMap[{G->getPointerOperand(), ctx}];
        if (updateLvl(G, ctx, baseL))
            push_deps(G, ctx);
    }

    void handleAlloca(AllocaInst *A, Context ctx)
    {
        updateLvl(A, ctx, Level::Public);
    }

    void handleCall(CallInst *C, Context ctx)
    {
        Function *callee = C->getCalledFunction();
        if (!callee || callee->isDeclaration())
            return;

        Context nextCtx = C;

        parentCtx[nextCtx] = ctx;
        bool changed = false;
        for (unsigned i = 0; i < C->arg_size(); ++i)
        {
            Level argL = taintMap[{C->getArgOperand(i), ctx}];
            if (updateLvl(callee->getArg(i), nextCtx, argL))
            {
                changed = true;
            }
        }
        // if (changed)
        pushToWorklist(callee, nextCtx);
    }

    void handleReturn(ReturnInst *R, Context ctx)
    {
        Value *retVal = R->getReturnValue();
        if (!retVal || !ctx)
            return;

        Level retLvl = taintMap[{retVal, ctx}];
        Context pCtx = parentCtx[ctx];
        if (updateLvl(ctx, pCtx, retLvl))
        {
            push_deps(ctx, pCtx);
        }
    }

    void pushToWorklist(Function *F, Context ctx)
    {
        for (auto &I : instructions(F))
            worklist.push({&I, ctx});
    }

    void push_deps(Value *V, Context ctx)
    {
        for (User *U : V->users())
        {
            if (auto *I = dyn_cast<Instruction>(U))
                worklist.push({I, ctx});
        }
    }
    void updateFuncLvl(Function *F, Level lvl)
    {
        funcLevel[F] = join(funcLevel[F], lvl);
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

    // Module Pass Manager
    ModulePassManager MPM;
    MPM.addPass(LevelPropPass());

    // Run
    MPM.run(*module, MAM);
    return 0;
}