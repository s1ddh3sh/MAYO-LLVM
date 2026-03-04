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
        outs() << "\n Function Sensitivity \n";

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

        set<Value *> local;
        for (auto &BB : *F)
        {
            for (auto &I : BB)
            {

                if (auto *A = dyn_cast<AllocaInst>(&I))
                {
                    local.insert(A);
                    Level L = Level::Public;
                    string name = A->getName().str();

                    if (name == "sk" || name == "esk" ||
                        name == "O" || name == "L" || name == "Ox" ||
                        name == "seed_sk" ||
                        name.find("csk") != string::npos ||
                        name.find("seed_sk") != string::npos ||
                        name == "param_sk_seed_bytes")
                    {
                        L = Level::Secret;
                    }
                    else if (name == "V" || name == "Vdec" || name == "VP1V" ||
                             name.find("Vdec") != string::npos)
                    {
                        L = Level::EphSecret;
                    }
                    else if (name == "P1" || name == "P2")
                    {
                        L = Level::Public;
                    }

                    env.mem[A] = L;
                    env.reg[A] = L;
                }

                // gep
                else if (auto *G = dyn_cast<GetElementPtrInst>(&I))
                {
                    Value *base = getBase(G->getPointerOperand());

                    env.reg[&I] = env.reg[base];

                    // env.mem[&I] = env.mem[base];
                    // env.mem[getBase(&I)] = env.mem[base];
                }

                // load
                else if (auto *L = dyn_cast<LoadInst>(&I))
                {
                    Value *ptr = L->getPointerOperand();
                    Value *base = getBase(ptr);

                    Level memL = env.mem[base];

                    if (!isa<AllocaInst>(base) && !isa<Argument>(base))
                    {
                        memL = join(memL, env.reg[base]);
                    }
                    env.reg[&I] = memL;
                }

                // store
                else if (auto *S = dyn_cast<StoreInst>(&I))
                {
                    Value *src = S->getValueOperand();
                    Value *dst = getBase(S->getPointerOperand());

                    bool skipStore = false;
                    if (S->getValueOperand()->getType()->isPointerTy() &&
                        isa<AllocaInst>(dst))
                    {
                        string name = cast<AllocaInst>(dst)->getName().str();
                        skipStore = (name == "P1" || name == "P2");
                    }

                    if (!skipStore)
                    {
                        env.mem[dst] = join(env.mem[dst], env.reg[src]);
                    }
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
                // funcLvl = join(funcLvl, env.reg[&I]);
            }
        }
        Level outLvl = env.returnlevel;

        for (Value *v : local)
        {
            outLvl = join(outLvl, env.mem[v]);
        }

        // funcLvl = join(funcLvl, outLvl);
        funcLevel[F] = join(funcLevel[F], outLvl);

        callStack.erase(F);

        outs() << "\n--- Function: " << F->getName() << " ---\n";

        for (auto &r : env.reg)
        {
            outs() << "REG: ";
            r.first->print(outs());
            outs() << " -> Level : " << (int)r.second << "\n";
        }

        for (auto &m : env.mem)
        {
            outs() << "MEM: ";
            m.first->print(outs());
            outs() << " -> Level : " << (int)m.second << "\n";
        }
        outs() << "\n\n";
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
            for (int i = 0; i < (int)C.arg_size(); i++)
            {
                Value *arg = C.getArgOperand(i);
                if (arg->getType()->isPointerTy())
                {
                    Value *base = getBase(arg);
                    callerEnv.mem[base] = join(callerEnv.mem[base], ret);
                }
            }
            return;
        }

        for (int i = 0; i < C.arg_size(); i++)
        {
            Value *caller_arg = C.getArgOperand(i);
            Argument &callee_arg = *callee->getArg(i);

            if (caller_arg->getType()->isPointerTy())
            {
                Value *base = getBase(caller_arg);
                Level memLvl = callerEnv.mem[base];

                if (!isa<AllocaInst>(base) && !isa<Argument>(base))
                {
                    memLvl = join(memLvl, callerEnv.reg[base]);
                }
                calleeEnv.mem[&callee_arg] = memLvl;
                calleeEnv.reg[&callee_arg] = join(callerEnv.reg[caller_arg], memLvl);
            }
            else {
                calleeEnv.reg[&callee_arg] = callerEnv.reg[caller_arg];
            }
            // calleeEnv.reg[&callee_arg] = callerEnv.reg[caller_arg];
            // calleeEnv.mem[&callee_arg] = callerEnv.mem[getBase(caller_arg)];
        }

        calleeEnv = analyzeFunc(callee, calleeEnv);

        for (int i = 0; i < (int)C.arg_size(); i++)
        {
            Value *callerArg = C.getArgOperand(i);
            Argument &calleeArg = *callee->getArg(i);

            if (callerArg->getType()->isPointerTy())
            {

                Value *callerBase = getBase(callerArg);
                Value *calleeBase = getBase(&calleeArg);
                Level memLvl = join(callerEnv.mem[callerBase], calleeEnv.mem[calleeBase]);

                if(isa<AllocaInst>(callerBase) || isa<Argument>(callerBase)) {
                    callerEnv.mem[callerBase] = memLvl;
                }
                else {
                    callerEnv.reg[callerBase] = join(callerEnv.reg[callerBase], memLvl);
                    callerEnv.reg[callerArg] = join(callerEnv.reg[callerArg], memLvl);
                }
            }
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

    // Module Pass Manager
    ModulePassManager MPM;
    MPM.addPass(LevelPropPass());

    // Run
    MPM.run(*module, MAM);
    return 0;
}