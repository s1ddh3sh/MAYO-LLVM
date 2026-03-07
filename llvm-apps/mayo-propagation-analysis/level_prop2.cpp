// #include "z3++.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IRReader/IRReader.h"

#include <map>
#include <set>

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

using Root = Value *;
struct Env
{
    map<Value *, Level> reg;
    map<Root, Level> mem;
    map<Value *, Root> pts;
    Level returnlevel = Level::Public;
};

Level initialLvl(StringRef n)
{
    string name = n.str();
    if (name == "sk" || name == "esk" ||
        name == "O" || name == "L" || name == "Ox" ||
        name == "seed_sk" ||
        name.find("csk") != string::npos ||
        name.find("seed_sk") != string::npos ||
        name == "param_sk_seed_bytes")
    {
        return Level::Secret;
    }
    else if (name == "V" || name == "Vdec" ||
             name.find("Vdec") != string::npos)
    {
        return Level::EphSecret;
    }
    return Level::Public;
}

class LevelPropPass : public PassInfoMixin<LevelPropPass>
{
    map<Function *, Level> funcLevel;
    set<Function *> onStack;

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
    map<Function *, Env> finalEnvs;

    void printMaps()
    {

        // for (auto &it : funcLevel)
        // {
        //     outs() << it.first->getName() << " -> ";

        //     if (it.second == Level::Public)
        //         outs() << "Public";
        //     else if (it.second == Level::EphSecret)
        //         outs() << "EphSecret";
        //     else
        //         outs() << "Secret";

        //     outs() << "\n";
        // }

        for (auto &[F, env] : finalEnvs)
        {

            // if (printTargets.count(F->getName().str()))
            // {

            outs() << "\n"
                   << F->getName()
                   << "  [" << levelStr(funcLevel[F]) << "] \n";
            for (auto &[v, l] : env.reg)
            {

                outs() << "  REG  ";
                v->print(outs());
                outs() << "  ->  " << levelStr(l) << "\n";
            }
            for (auto &[r, l] : env.mem)
            {
                if (!r)
                    continue;
                outs() << "  MEM  ";
                r->print(outs());
                outs() << "  ->  " << levelStr(l) << "\n";
            }
            // }
        }
        outs() << "\n Function Sensitivity \n";

        for (auto &[F, l] : funcLevel)
        {
            outs() << F->getName() << " -> " << levelStr(l) << "\n";
        }
        outs() << "\n";
    }

    Root lookupRoot(Value *V, Env &env)
    {
        if (!V)
            return nullptr;

        if (env.pts.count(V))
            return env.pts[V];

        if (auto *G = dyn_cast<GetElementPtrInst>(V))
            return lookupRoot(G->getPointerOperand(), env);

        if (auto *C = dyn_cast<CastInst>(V))
            return lookupRoot(C->getOperand(0), env);

        if (isa<AllocaInst>(V) || isa<Argument>(V))
        {
            env.pts[V] = V;
            return V;
        }

        return nullptr;
    }

    Env analyzeFunc(Function *F, Env env)
    {
        if (onStack.count(F))
            return env;

        onStack.insert(F);
        for (auto &arg : F->args())
        {
            if (!env.reg.count(&arg))
            {
                env.reg[&arg] = Level::Public;
            }
            if (!env.mem.count(&arg))
            {
                env.pts[&arg] = &arg;
                env.mem[&arg] = Level::Public;
            }
        }

        bool changed = true;
        while (changed)
        {
            changed = false;
            for (auto &BB : *F)
            {
                for (auto &I : BB)
                {
                    changed |= dataFlow(I, env);
                }
            }
        }
        Level fLvl = env.returnlevel;
        for (auto &BB : *F)
        {
            for (auto &I : BB)
            {
                if (auto *A = dyn_cast<AllocaInst>(&I))
                    fLvl = join(fLvl, env.mem[A]);
            }
        }

        funcLevel[F] = join(funcLevel[F], fLvl);
        onStack.erase(F);
        if (!finalEnvs.count(F))
            finalEnvs[F] = env;

        return env;
    }

    bool dataFlow(Instruction &I, Env &env)
    {

        // alloc
        if (auto *A = dyn_cast<AllocaInst>(&I))
        {
            env.pts[A] = A;
            env.reg[A] = Level::Public;
            if (!env.mem.count(A))
            {
                StringRef name = A->getName();
                bool isAddrSlot = name.ends_with(".addr");
                bool isPtrAlloca = A->getAllocatedType()->isPointerTy();

                if (isAddrSlot || isPtrAlloca)
                    env.mem[A] = Level::Public;
                else
                    env.mem[A] = initialLvl(name);
            }
            return false;
        }

        // gep
        if (auto *G = dyn_cast<GetElementPtrInst>(&I))
        {
            Value *base = G->getPointerOperand();
            Root root = lookupRoot(base, env);
            env.pts[G] = root;

            Level newL = join(env.reg[base], env.mem[root]);
            bool ch = join(env.reg[G], newL) != env.reg[G];
            env.reg[G] = join(env.reg[G], newL);
            return ch;
        }

        // load
        if (auto *L = dyn_cast<LoadInst>(&I))
        {
            Value *ptr = L->getPointerOperand();
            Root root = lookupRoot(ptr, env);
            Level newLvl = join(env.mem[root], env.reg[ptr]);
            bool ch = (join(env.reg[L], newLvl) != env.reg[L]);
            env.reg[L] = join(env.reg[L], newLvl);
            return ch;
        }

        // store
        if (auto *S = dyn_cast<StoreInst>(&I))
        {
            Value *val = S->getValueOperand();
            Value *ptr = S->getPointerOperand();
            Root r = lookupRoot(ptr, env);
            if (!r)
                return false;
            Level old = env.mem[r];
            env.mem[r] = join(old, env.reg[val]);

            return (env.mem[r] != old);
        }

        // binop
        if (auto *B = dyn_cast<BinaryOperator>(&I))
        {
            Level newLvl = join(env.reg[B->getOperand(0)],
                                env.reg[B->getOperand(1)]);
            bool ch = (join(env.reg[B], newLvl) != env.reg[B]);
            env.reg[B] = join(env.reg[B], newLvl);
            return ch;
        }

        // cast
        if (auto *C = dyn_cast<CastInst>(&I))
        {
            if (isa<IntToPtrInst>(C))
                env.pts[C] = nullptr;
            else if (C->getType()->isPointerTy())
            {
                env.pts[C] = lookupRoot(C->getOperand(0), env);
            }

            Level newLvl = env.reg[C->getOperand(0)];
            bool ch = (join(env.reg[C], newLvl) != env.reg[C]);
            env.reg[C] = join(env.reg[C], newLvl);
            return ch;
        }

        if (auto *Cmp = dyn_cast<CmpInst>(&I))
        {
            Level lvl = join(env.reg[Cmp->getOperand(0)],
                             env.reg[Cmp->getOperand(1)]);
            bool ch = (join(env.reg[Cmp], lvl) != env.reg[Cmp]);
            env.reg[Cmp] = join(env.reg[Cmp], lvl);
            return ch;
        }

        if (auto *C = dyn_cast<CallInst>(&I))
            return handleCall(*C, env);

        if (auto *R = dyn_cast<ReturnInst>(&I))
        {
            if (Value *rv = R->getReturnValue())
            {
                Level old = env.returnlevel;
                env.returnlevel = join(old, env.reg[rv]);
                return (env.returnlevel != old);
            }
            return false;
        }
        return false;
    }

    bool handleCall(CallInst &C, Env &callerEnv)
    {
        Function *callee = C.getCalledFunction();
        if (!callee)
        {
            Level ret = Level::Public;
            for (auto &arg : C.args())
                ret = join(ret, callerEnv.reg[arg.get()]);
            Level old = callerEnv.reg[&C];
            callerEnv.reg[&C] = join(old, ret);
            return (callerEnv.reg[&C] != old);
        }

        if (callee->isDeclaration())
            return handleExtCall(C, callee, callerEnv);

        Env calleeEnv;
        // calleeEnv.mem = callerEnv.mem;

        set<Root> reachableRoots;

        for (int i = 0; i < (int)C.arg_size(); i++)
        {
            Value *callerArg = C.getArgOperand(i);
            Argument *calleeArg = callee->getArg(i);

            calleeEnv.reg[calleeArg] = callerEnv.reg[callerArg];

            if (callerArg->getType()->isPointerTy())
            {
                Root r = lookupRoot(callerArg, callerEnv);
                calleeEnv.pts[calleeArg] = r;
                if (r)
                {
                    calleeEnv.mem[r] = callerEnv.mem[r];
                    reachableRoots.insert(r);
                }
            }
        }

        Env exitEnv = analyzeFunc(callee, calleeEnv);

        bool changed = false;

        for (Root r : reachableRoots)
        {
            Level old = callerEnv.mem[r];
            callerEnv.mem[r] = join(old, exitEnv.mem[r]);
            if (callerEnv.mem[r] != old)
                changed = true;
        }

        Level oldReturn = callerEnv.reg[&C];
        callerEnv.reg[&C] = join(oldReturn, exitEnv.returnlevel);
        changed |= (callerEnv.reg[&C] != oldReturn);
        return changed;
    }

    bool handleExtCall(CallInst &C, Function *callee, Env &env)
    {
        StringRef name = callee->getName();

        if (name == "memcpy" || name == "memmove" || name.starts_with("llvm.memcpy") || name.starts_with("llvm.memmove"))
        {
            if (C.arg_size() >= 2)
            {
                Root src = lookupRoot(C.getArgOperand(1), env);
                Root dst = lookupRoot(C.getArgOperand(0), env);
                Level srcLvl = join(env.mem[src], env.reg[C.getArgOperand(1)]);
                Level old = env.mem[dst];
                env.mem[dst] = join(old, srcLvl);
                env.reg[&C] = Level::Public;
                return (env.mem[dst] != old);
            }
            return false;
        }

        if (name == "memset" || name.starts_with("llvm.memset"))
        {
            env.reg[&C] = Level::Public;
            return false;
        }

        Level argsLvl = Level::Public;
        for (auto &arg : C.args())
        {
            if (!arg.get()->getType()->isPointerTy())
            {
                argsLvl = join(argsLvl, env.reg[arg.get()]);
            }
        }

        // bool changed = false;
        // for (auto &arg : C.args())
        // {
        //     if (arg.get()->getType()->isPointerTy())
        //     {
        //         Root r = lookupRoot(arg.get(), env);
        //         Level old = env.mem[r];
        //         env.mem[r] = join(old, argsLvl);
        //         if (env.mem[r] != old)
        //             changed = true;
        //     }
        // }

        Level oldReturn = env.reg[&C];
        env.reg[&C] = join(oldReturn, argsLvl);
        return env.reg[&C] != oldReturn;
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