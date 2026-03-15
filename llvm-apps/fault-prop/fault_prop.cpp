#include "z3++.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/GetElementPtrTypeIterator.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Passes/PassBuilder.h"
#include <llvm-20/llvm/IR/Instructions.h>
#include <memory>

#include <llvm-20/llvm/ADT/PostOrderIterator.h>
#include <llvm-20/llvm/IR/Function.h>
#include <llvm-20/llvm/IR/Type.h>
#include <llvm/Support/Casting.h>
#include <llvm/Support/raw_ostream.h>
#include <map>
#include <set>
#include <string>
#include <vector>

using namespace llvm;
using namespace std;

enum class Level { Public = 0, EphSecret = 1, Secret = 2 };
map<Function *, Level> funcLevel;

Level join(Level a, Level b) { return (Level)max((int)a, (int)b); }

struct Env {
  map<Value *, Level> reg;
  map<Value *, Level> mem;
  Level returnlevel = Level::Public;
};

class LevelPropPass : public PassInfoMixin<LevelPropPass> {
  vector<Function *> callStack;

public:
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
    Function *main = M.getFunction("main");

    Env global;
    analyzeFunc(main, global);
    printMaps();
    return PreservedAnalyses::all();
  }

private:
  void printMaps() {
    outs() << "\n Function Sensitivity \n";

    for (auto &it : funcLevel) {
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

  Value *getBase(Value *V) {
    while (true) {
      if (auto *G = dyn_cast<GetElementPtrInst>(V))
        V = G->getPointerOperand();
      else if (auto *B = dyn_cast<BitCastInst>(V))
        V = B->getOperand(0);
      else
        break;
    }
    return V;
  }

  Env analyzeFunc(Function *F, Env env) {
    for (auto *f : callStack)
      if (f == F)
        return env;

    callStack.push_back(F);

    Level funcLvl = Level::Public;

    for (auto &arg : F->args()) {
      funcLvl = join(funcLvl, env.reg[&arg]);
    }

    set<Value *> local;

    for (auto &BB : *F) {
      for (auto &I : BB) {
        if (auto *A = dyn_cast<AllocaInst>(&I)) {
          local.insert(A);
          Level L = Level::Public;
          string name = A->getName().str();

          if (name == "sk" || name == "esk" || name == "O" || name == "L" ||
              name == "Ox" || name == "seed_sk" ||
              name.find("csk") != string::npos ||
              name.find("seed_sk") != string::npos ||
              name == "param_sk_seed_bytes") {
            L = Level::Secret;
          } else if (name == "V" || name == "Vdec" ||
                     name.find("Vdec") != string::npos) {
            L = Level::EphSecret;
          }

          env.mem[A] = L;
          env.reg[A] = L;
        }
      }
    }

    bool changed = true;
    while (changed) {
      changed = false;
      auto prevReg = env.reg;
      auto prevMem = env.mem;

      for (auto &BB : *F) {
        for (auto &I : BB) {

          if (dyn_cast<AllocaInst>(&I)) {
            continue;
          }

          // gep
          else if (auto *G = dyn_cast<GetElementPtrInst>(&I)) {
            Value *base = getBase(G->getPointerOperand());

            env.reg[&I] = env.reg[base];

            env.mem[&I] = env.mem[base];
          }

          // load
          else if (auto *L = dyn_cast<LoadInst>(&I)) {
            Value *ptr = L->getPointerOperand();
            Value *base = getBase(ptr);

            Level memL = env.mem[base];

            if (!isa<AllocaInst>(base) && !isa<Argument>(base)) {
              memL = join(memL, env.reg[base]);
            }
            env.reg[&I] = memL;
          }

          // store
          else if (auto *S = dyn_cast<StoreInst>(&I)) {
            Value *src = S->getValueOperand();
            Value *dst = getBase(S->getPointerOperand());

            env.mem[dst] = join(env.mem[dst], env.reg[src]);
            Value *cur = dst;
            while (auto *LI = dyn_cast<LoadInst>(cur)) {
              Value *loadSrc = getBase(LI->getPointerOperand());
              env.mem[loadSrc] = join(env.mem[loadSrc], env.reg[src]);
              cur = loadSrc;
            }
          }
          // binop
          else if (auto *B = dyn_cast<BinaryOperator>(&I)) {
            env.reg[&I] =
                join(env.reg[B->getOperand(0)], env.reg[B->getOperand(1)]);
          }

          else if (auto *C = dyn_cast<CallInst>(&I)) {
            handleCall(*C, env);
          }

          else if (auto *R = dyn_cast<ReturnInst>(&I)) {
            if (R->getReturnValue()) {
              env.returnlevel = env.reg[R->getReturnValue()];
            }
          } else if (auto *P = dyn_cast<PHINode>(&I)) {
            Level regLvl = Level::Public;
            Level memLvl = Level::Public;

            for (unsigned i = 0; i < P->getNumIncomingValues(); i++) {
              Value *inc = P->getIncomingValue(i);
              Value *base = getBase(inc);
              regLvl = join(regLvl, env.reg[inc]);
              memLvl = join(memLvl, env.mem[base]);
            }

            env.reg[P] = regLvl;
            env.mem[P] = memLvl;
          }
          // funcLvl = join(funcLvl, env.reg[&I]);
        }
      }

      for (auto &[v, lvl] : env.reg) {
        if (prevReg.find(v) == prevReg.end() || prevReg[v] != lvl) {
          changed = true;
          break;
        }
      }
      if (!changed) {
        for (auto &[v, lvl] : env.mem) {
          if (prevMem.find(v) == prevMem.end() || prevMem[v] != lvl) {
            changed = true;
            break;
          }
        }
      }
    }
    Level outLvl = env.returnlevel;

    for (Value *v : local) {
      outLvl = join(outLvl, env.mem[v]);
    }

    funcLvl = join(funcLvl, outLvl);
    funcLevel[F] = join(funcLevel[F], funcLvl);

    callStack.pop_back();

    // outs() << "\n--- Function: " << F->getName() << " ---\n";
    // if (callStack.size() >= 2) {
    //   outs() << "Called from: " << callStack[callStack.size() - 1]->getName()
    //          << "\n";
    // } else {
    //   outs() << "Called from: <entry>\n";
    // }
    // for (auto &r : env.reg) {
    //   outs() << "REG: ";
    //   r.first->print(outs());
    //   outs() << " -> Level : " << (int)r.second << "\n";
    // }

    // for (auto &m : env.mem) {
    //   outs() << "MEM: ";
    //   m.first->print(outs());
    //   outs() << " -> Level : " << (int)m.second << "\n";
    // }
    // outs() << "\n\n";
    return env;
  }

  void handleCall(CallInst &C, Env &callerEnv) {
    Function *callee = C.getCalledFunction();
    if (!callee)
      return;
    Env calleeEnv;

    if (callee->isDeclaration()) {
      StringRef name = callee->getName();

      if ((name == "memcpy" || name == "memmove" ||
           name.find("llvm.memcpy") != string::npos ||
           name.find("llvm.memmove") != string::npos) &&
          C.arg_size() >= 2) {
        Value *dst = getBase(C.getArgOperand(0));
        Value *src = getBase(C.getArgOperand(1));

        Level srcLvl = callerEnv.mem[src];
        if (!isa<AllocaInst>(src) && !isa<Argument>(src))
          srcLvl = join(srcLvl, callerEnv.reg[src]);

        callerEnv.mem[dst] = join(callerEnv.mem[dst], srcLvl);
        callerEnv.reg[&C] = Level::Public;
        return;
      }

      if ((name == "memset" || name.find("llvm.memset") != string::npos) &&
          C.arg_size() >= 2) {
        Value *dst = getBase(C.getArgOperand(0));
        Value *fillVal = C.getArgOperand(1);

        Level fillLvl = callerEnv.reg[fillVal];
        callerEnv.mem[dst] = join(callerEnv.mem[dst], fillLvl);
        callerEnv.reg[&C] = Level::Public;
        return;
      }

      if (name == "calloc" || name == "free") {
        callerEnv.reg[&C] = Level::Public;
        return;
      }

      Level ret = Level::Public;
      for (unsigned i = 0; i < C.arg_size(); i++)
        ret = join(ret, callerEnv.reg[C.getArgOperand(i)]);

      callerEnv.reg[&C] = ret;

      for (unsigned i = 0; i < C.arg_size(); i++) {
        Value *arg = C.getArgOperand(i);
        if (arg->getType()->isPointerTy()) {
          Value *base = getBase(arg);
          callerEnv.mem[base] = join(callerEnv.mem[base], ret);
        }
      }
      return;
    }

    for (int i = 0; i < C.arg_size(); i++) {
      Value *caller_arg = C.getArgOperand(i);
      Argument &callee_arg = *callee->getArg(i);

      if (caller_arg->getType()->isPointerTy()) {
        Value *base = getBase(caller_arg);
        Level memLvl = callerEnv.mem[base];

        if (!isa<AllocaInst>(base) && !isa<Argument>(base)) {
          memLvl = join(memLvl, callerEnv.reg[base]);
        }
        calleeEnv.mem[&callee_arg] = memLvl;
        calleeEnv.reg[&callee_arg] = join(callerEnv.reg[caller_arg], memLvl);
      } else {
        calleeEnv.reg[&callee_arg] = callerEnv.reg[caller_arg];
      }
      // calleeEnv.reg[&callee_arg] = callerEnv.reg[caller_arg];
      // calleeEnv.mem[&callee_arg] = callerEnv.mem[getBase(caller_arg)];
    }

    calleeEnv = analyzeFunc(callee, calleeEnv);
    map<Argument *, set<Value *>> argToAllocas;
    for (auto &BB : *callee) {
      for (auto &I : BB) {
        if (auto *S = dyn_cast<StoreInst>(&I)) {
          Value *val = S->getValueOperand();
          Value *dst = S->getPointerOperand();
          for (auto &calleeArg : callee->args()) {
            if (val == &calleeArg) {
              argToAllocas[&calleeArg].insert(dst);
            }
          }
        }
      }
    }
    for (int i = 0; i < (int)C.arg_size(); i++) {
      Value *callerArg = C.getArgOperand(i);
      Argument &calleeArg = *callee->getArg(i);

      if (callerArg->getType()->isPointerTy()) {

        Value *callerBase = getBase(callerArg);
        // Value *calleeBase = getBase(&calleeArg);
        Level memLvl =
            join(callerEnv.mem[callerBase], calleeEnv.mem[&calleeArg]);

        for (Value *alloca : argToAllocas[&calleeArg]) {
          memLvl = join(memLvl, calleeEnv.mem[alloca]);

          for (auto *U : alloca->users()) {
            if (auto *LI = dyn_cast<LoadInst>(U)) {
              memLvl = join(memLvl, calleeEnv.mem[LI]);
              // Also chase GEPs off the loaded pointer (%arrayidx1 etc.)
              for (auto *LU : LI->users()) {
                if (auto *G = dyn_cast<GetElementPtrInst>(LU)) {
                  memLvl = join(memLvl, calleeEnv.mem[G]);
                }
              }
            }
          }
        }

        if (isa<AllocaInst>(callerBase) || isa<Argument>(callerBase)) {
          callerEnv.mem[callerBase] = memLvl;
        } else {
          callerEnv.reg[callerBase] = join(callerEnv.reg[callerBase], memLvl);
          callerEnv.reg[callerArg] = join(callerEnv.reg[callerArg], memLvl);
        }

        Value *cur = callerBase;
        while (auto *LI = dyn_cast<LoadInst>(cur)) {
          Value *loadSrc = getBase(LI->getPointerOperand());
          callerEnv.mem[loadSrc] = join(callerEnv.mem[loadSrc], memLvl);
          cur = loadSrc;
        }
      }
    }

    callerEnv.reg[&C] = calleeEnv.returnlevel;
  }
};

struct MemModel {
  z3::context &zctx;
  z3::expr mem;

  MemModel(z3::context &c)
      : zctx(c),
        mem(c.constant("mem0", c.array_sort(c.bv_sort(64), c.bv_sort(8)))) {}

  z3::expr read(z3::expr addr, unsigned bitWidth) {
    addr = to64(addr);
    unsigned bytes = bitWidth / 8;
    if (bytes == 0)
      bytes = 1;

    if (bytes == 1)
      return z3::select(mem, addr);

    z3::expr result = z3::select(mem, addr);
    for (unsigned i = 1; i < bytes; i++) {
      z3::expr byte_i = z3::select(mem, addr + zctx.bv_val(i, 64));
      result = z3::concat(byte_i, result);
    }
    return result;
  }

  void write(z3::expr addr, z3::expr val) {
    addr = to64(addr);
    unsigned bytes = val.get_sort().bv_size() / 8;
    if (bytes == 0)
      bytes = 1;

    for (unsigned i = 0; i < bytes; i++) {
      z3::expr byte_i = (bytes == 1) ? val : val.extract(8 * i + 7, 8 * i);
      mem = z3::store(mem, addr + zctx.bv_val(i, 64), byte_i);
    }
  }

private:
  z3::expr to64(z3::expr e) {
    unsigned w = e.get_sort().bv_size();
    if (w < 64)
      return z3::zext(e, 64 - w);
    if (w > 64)
      return e.extract(63, 0);
    return e;
  }
};

using SymEnv = std::map<llvm::Value *, z3::expr>;

class SymbolicPass : public PassInfoMixin<SymbolicPass> {
public:
  map<Function *, map<Instruction *, z3::expr>> allSymExprs;
  std::unique_ptr<z3::context> zctx;

  std::vector<llvm::Function *> callStack;

  SymbolicPass() : zctx(std::make_unique<z3::context>()) {}

  PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
    for (auto &[F, lvl] : funcLevel) {
      if (lvl == Level::Public)
        continue;
      if (F->isDeclaration())
        continue;

      SymEnv env;
      MemModel mem(*zctx);

      seedArgs(F, lvl, env);

      processFunction(F, env, mem);
      for (auto &[V, expr] : env) {
        if (auto *I = llvm::dyn_cast<llvm::Instruction>(V))
          allSymExprs[F].emplace(I, expr);
      }
    }

    printResults();

    return PreservedAnalyses::all();
  }

private:
  void envSet(SymEnv &env, llvm::Value *key, z3::expr val) {
    env.insert_or_assign(key, val);
  }
  z3::expr getOrMake(llvm::Value *V, SymEnv &env, unsigned wantBits) {
    auto it = env.find(V);
    if (it != env.end()) {
      z3::expr e = it->second;
      unsigned have = e.get_sort().bv_size();
      if (have < wantBits)
        return z3::zext(e, wantBits - have);
      if (have > wantBits)
        return e.extract(wantBits - 1, 0);
      return e;
    }

    if (auto *CI = dyn_cast<ConstantInt>(V)) {
      unsigned w = CI->getBitWidth();
      z3::expr e = (w <= 64) ? zctx->bv_val(CI->getZExtValue(), w) : [&] {
        llvm::SmallString<64> s;
        CI->getValue().toString(s, 10, false);
        return zctx->bv_val(s.c_str(), w);
      }();
      env.insert_or_assign(V, e);
      if (w < wantBits)
        return z3::zext(e, wantBits - w);
      if (w > wantBits)
        return e.extract(wantBits - 1, 0);
      return e;
    }

    if (isa<UndefValue>(V) || isa<PoisonValue>(V)) {
      static int uid = 0;
      z3::expr e =
          zctx->bv_const(("undef_" + std::to_string(uid++)).c_str(), wantBits);
      env.insert_or_assign(V, e);
      return e;
    }

    if (auto *CE = dyn_cast<ConstantExpr>(V)) {
      Instruction *tmp = CE->getAsInstruction();
      MemModel tmpMem(*zctx);
      std::map<BasicBlock *, z3::expr> noPath;
      liftInstr(tmp, env, tmpMem, noPath);
      z3::expr res =
          env.count(tmp) ? env.at(tmp) : zctx->bv_const("ce_unk", wantBits);
      tmp->deleteValue();
      return res;
    }

    std::string name = "sym_" + (V->hasName() ? V->getName().str()
                                              : std::to_string((uintptr_t)V));
    z3::expr e = zctx->bv_const(name.c_str(), wantBits);
    env.insert_or_assign(V, e);
    return e;
  }

  void seedArgs(Function *F, Level lvl, SymEnv &env) {
    int idx = 0;
    for (Argument &arg : F->args()) {
      std::string base = F->getName().str() + "_arg" + std::to_string(idx++);
      unsigned bw = arg.getType()->isIntegerTy()
                        ? arg.getType()->getIntegerBitWidth()
                        : 64;
      bool isSecret = (lvl >= Level::EphSecret);
      std::string name = isSecret ? base + "_sec" : base + "_pub";
      env.insert_or_assign(&arg, zctx->bv_const(name.c_str(), bw));
    }
  }

  void processFunction(Function *F, SymEnv &env, MemModel &mem) {
    callStack.push_back(F);

    map<BasicBlock *, z3::expr> pathCond;
    pathCond.emplace(&F->getEntryBlock(), zctx->bool_val(true));

    ReversePostOrderTraversal<Function *> RPOT(F);
    for (auto *BB : RPOT) {
      for (auto &I : *BB)
        liftInstr(&I, env, mem, pathCond);
      propagateCond(BB, env, pathCond);
    }

    callStack.pop_back();
  }

  void liftInstr(Instruction *I, SymEnv &env, MemModel &mem,
                 map<BasicBlock *, z3::expr> &pathCond) {

    // BinaryOperator
    if (auto *B = dyn_cast<BinaryOperator>(I)) {
      unsigned w = B->getType()->getIntegerBitWidth();
      z3::expr a = getOrMake(B->getOperand(0), env, w);
      z3::expr b = getOrMake(B->getOperand(1), env, w);
      envSet(env, I, liftBinOp(B->getOpcode(), a, b, w));
      return;
    }

    if (auto *C = dyn_cast<CastInst>(I)) {
      unsigned srcW = C->getSrcTy()->isIntegerTy()
                          ? C->getSrcTy()->getIntegerBitWidth()
                          : 64;
      unsigned dstW = C->getDestTy()->isIntegerTy()
                          ? C->getDestTy()->getIntegerBitWidth()
                          : 64;
      z3::expr src = getOrMake(C->getOperand(0), env, srcW);
      envSet(env, I, liftCast(C->getOpcode(), src, srcW, dstW));
      return;
    }

    if (auto *cmp = dyn_cast<ICmpInst>(I)) {
      unsigned w = cmp->getOperand(0)->getType()->getIntegerBitWidth();
      z3::expr a = getOrMake(cmp->getOperand(0), env, w);
      z3::expr b = getOrMake(cmp->getOperand(1), env, w);
      z3::expr cond = liftICmp(cmp->getPredicate(), a, b);
      envSet(env, I, z3::ite(cond, zctx->bv_val(1, 1), zctx->bv_val(0, 1)));
      return;
    }

    if (auto *sel = dyn_cast<SelectInst>(I)) {
      unsigned w = sel->getType()->isIntegerTy()
                       ? sel->getType()->getIntegerBitWidth()
                       : 64;
      z3::expr cond = getOrMake(sel->getCondition(), env, 1);
      z3::expr tv = getOrMake(sel->getTrueValue(), env, w);
      z3::expr fv = getOrMake(sel->getFalseValue(), env, w);
      envSet(env, I, z3::ite(cond == zctx->bv_val(1, 1), tv, fv));
      return;
    }

    if (auto *phi = dyn_cast<PHINode>(I)) {
      envSet(env, I, liftPHI(phi, env, pathCond));
      return;
    }

    if (auto *gep = dyn_cast<GetElementPtrInst>(I)) {
      envSet(env, I, liftGEP(gep, env, I->getModule()->getDataLayout()));
      return;
    }

    if (auto *load = dyn_cast<LoadInst>(I)) {
      z3::expr addr = getOrMake(load->getPointerOperand(), env, 64);
      unsigned bw = load->getType()->isIntegerTy()
                        ? load->getType()->getIntegerBitWidth()
                        : 8;
      envSet(env, I, mem.read(addr, bw));
      return;
    }

    if (auto *store = dyn_cast<StoreInst>(I)) {
      unsigned bw =
          store->getValueOperand()->getType()->isIntegerTy()
              ? store->getValueOperand()->getType()->getIntegerBitWidth()
              : 64;
      z3::expr val = getOrMake(store->getValueOperand(), env, bw);
      z3::expr addr = getOrMake(store->getPointerOperand(), env, 64);
      mem.write(addr, val);
      return;
    }

    // Call
    if (auto *call = dyn_cast<CallInst>(I)) {
      liftCall(call, env, mem, pathCond);
      return;
    }

    if (auto *alloca = dyn_cast<AllocaInst>(I)) {
      std::string name = "alloca_" + alloca->getName().str();
      envSet(env, I, zctx->bv_const(name.c_str(), 64));
      return;
    }

    if (auto *ret = dyn_cast<ReturnInst>(I)) {
      if (ret->getReturnValue()) {
        unsigned w =
            ret->getReturnValue()->getType()->isIntegerTy()
                ? ret->getReturnValue()->getType()->getIntegerBitWidth()
                : 64;
        envSet(env, I, getOrMake(ret->getReturnValue(), env, w));
      }
      return;
    }

  }

  z3::expr liftBinOp(Instruction::BinaryOps op, z3::expr a, z3::expr b,
                     unsigned w) {
    switch (op) {
    case Instruction::Xor:
      return a ^ b;
    case Instruction::And:
      return a & b;
    case Instruction::Or:
      return a | b;
    case Instruction::Add:
      return a + b;
    case Instruction::Sub:
      return a - b;
    case Instruction::Mul:
      return a * b;
    case Instruction::Shl:
      return z3::shl(a, b);
    case Instruction::LShr:
      return z3::lshr(a, b);
    case Instruction::AShr:
      return z3::ashr(a, b);
    case Instruction::UDiv:
      return z3::udiv(a, b);
    case Instruction::URem:
      return z3::urem(a, b);
    case Instruction::SDiv:
      return a / b;
    case Instruction::SRem:
      return z3::srem(a, b);
    default:
      static int unk = 0;
      return zctx->bv_const(("binop_unk_" + std::to_string(unk++)).c_str(), w);
    }
  }

  z3::expr liftCast(Instruction::CastOps op, z3::expr src, unsigned srcW,
                    unsigned dstW) {
    switch (op) {
    case Instruction::ZExt:
      return z3::zext(src, dstW - srcW);
    case Instruction::SExt:
      return z3::sext(src, dstW - srcW);
    case Instruction::Trunc:
      return src.extract(dstW - 1, 0);
    case Instruction::BitCast:
      return (srcW == dstW)
                 ? src
                 : zctx->bv_const(("bitcast_" + std::to_string(dstW)).c_str(),
                                  dstW);
    case Instruction::PtrToInt:
      return (srcW <= dstW) ? z3::zext(src, dstW - srcW)
                            : src.extract(dstW - 1, 0);
    case Instruction::IntToPtr:
      return src;
    default:
      return zctx->bv_const(("cast_unk_" + std::to_string(dstW)).c_str(), dstW);
    }
  }

  z3::expr liftICmp(ICmpInst::Predicate pred, z3::expr a, z3::expr b) {
    switch (pred) {
    case ICmpInst::ICMP_EQ:
      return a == b;
    case ICmpInst::ICMP_NE:
      return a != b;
    case ICmpInst::ICMP_ULT:
      return z3::ult(a, b);
    case ICmpInst::ICMP_ULE:
      return z3::ule(a, b);
    case ICmpInst::ICMP_UGT:
      return z3::ugt(a, b);
    case ICmpInst::ICMP_UGE:
      return z3::uge(a, b);
    case ICmpInst::ICMP_SLT:
      return a < b;
    case ICmpInst::ICMP_SLE:
      return a <= b;
    case ICmpInst::ICMP_SGT:
      return a > b;
    case ICmpInst::ICMP_SGE:
      return a >= b;
    default:
      return zctx->bool_val(true);
    }
  }

  z3::expr liftPHI(PHINode *phi, SymEnv &env,
                   map<BasicBlock *, z3::expr> &pathCond) {
    unsigned w = phi->getType()->isIntegerTy()
                     ? phi->getType()->getIntegerBitWidth()
                     : 64;

    z3::expr result =
        zctx->bv_const(("phi_" + phi->getName().str()).c_str(), w);

    for (unsigned i = 0; i < phi->getNumIncomingValues(); i++) {
      Value *inVal = phi->getIncomingValue(i);
      BasicBlock *inBB = phi->getIncomingBlock(i);

      z3::expr val = getOrMake(inVal, env, w);

      auto pcIt = pathCond.find(inBB);
      z3::expr cond =
          (pcIt != pathCond.end()) ? pcIt->second : zctx->bool_val(false);

      result = z3::ite(cond, val, result);
    }
    return result;
  }

  z3::expr liftGEP(GetElementPtrInst *gep, SymEnv &env, const DataLayout &DL) {
    z3::expr ptr = getOrMake(gep->getPointerOperand(), env, 64);
    z3::expr offset = zctx->bv_val((uint64_t)0, 64);

    auto ti = gep_type_begin(gep);
    auto te = gep_type_end(gep);
    for (; ti != te; ++ti) {
      Value *idxV = ti.getOperand();
      unsigned idxW = idxV->getType()->isIntegerTy()
                          ? idxV->getType()->getIntegerBitWidth()
                          : 64;
      z3::expr idx = getOrMake(idxV, env, idxW);
      if (idx.get_sort().bv_size() < 64)
        idx = z3::sext(idx, 64 - idx.get_sort().bv_size());

      if (auto *st = dyn_cast<StructType>(ti.getIndexedType())) {
        // Struct: field offset is always a constant
        if (auto *CI = dyn_cast<ConstantInt>(idxV)) {
          uint64_t off =
              DL.getStructLayout(st)->getElementOffset(CI->getZExtValue());
          offset = offset + zctx->bv_val(off, 64);
        }
      } else {
        // Array / pointer: stride × index
        uint64_t stride = DL.getTypeAllocSize(ti.getIndexedType());
        offset = offset + (idx * zctx->bv_val(stride, 64));
      }
    }
    return ptr + offset;
  }

  void liftCall(CallInst *call, SymEnv &env, MemModel &mem,
                map<BasicBlock *, z3::expr> &pathCond) {

    Function *callee = call->getCalledFunction();

    // Indirect call — return fresh symbol
    if (!callee) {
      if (call->getType()->isIntegerTy()) {
        static int ic = 0;
        envSet(env, call,
               zctx->bv_const(("indirect_" + std::to_string(ic++)).c_str(),
                              call->getType()->getIntegerBitWidth()));
      }
      return;
    }

    StringRef name = callee->getName();

    // memcpy / memmove
    if ((name == "memcpy" || name == "memmove" ||
         name.find("llvm.memcpy") != StringRef::npos ||
         name.find("llvm.memmove") != StringRef::npos) &&
        call->arg_size() >= 3) {
      z3::expr dst = getOrMake(call->getArgOperand(0), env, 64);
      z3::expr src = getOrMake(call->getArgOperand(1), env, 64);
      if (auto *CI = dyn_cast<ConstantInt>(call->getArgOperand(2))) {
        uint64_t len = CI->getZExtValue();
        for (uint64_t i = 0; i < len; i++)
          mem.write(dst + zctx->bv_val(i, 64),
                    mem.read(src + zctx->bv_val(i, 64), 8));
      } else {
        mem.write(dst, mem.read(src, 8)); // conservative
      }
      return;
    }

    if ((name == "memset" || name.find("llvm.memset") != StringRef::npos) &&
        call->arg_size() >= 3) {
      z3::expr dst = getOrMake(call->getArgOperand(0), env, 64);
      z3::expr fill = getOrMake(call->getArgOperand(1), env, 8);
      if (auto *CI = dyn_cast<ConstantInt>(call->getArgOperand(2))) {
        uint64_t len = CI->getZExtValue();
        for (uint64_t i = 0; i < len; i++)
          mem.write(dst + zctx->bv_val(i, 64), fill);
      } else {
        mem.write(dst, fill);
      }
      return;
    }

    bool inCallStack = false;
    for (auto *f : callStack)
      if (f == callee) {
        inCallStack = true;
        break;
      }

    if (!callee->isDeclaration() && funcLevel.count(callee) &&
        funcLevel[callee] != Level::Public && !inCallStack) {

      SymEnv calleeEnv;
      int i = 0;
      for (Argument &farg : callee->args()) {
        unsigned w = farg.getType()->isIntegerTy()
                         ? farg.getType()->getIntegerBitWidth()
                         : 64;
        calleeEnv.insert_or_assign(&farg,
                                   getOrMake(call->getArgOperand(i++), env, w));
      }

      processFunction(callee, calleeEnv, mem);

      for (auto &BB : *callee) {
        if (auto *ret = dyn_cast<ReturnInst>(BB.getTerminator())) {
          if (ret->getReturnValue()) {
            // The ReturnInst itself was stored in calleeEnv by liftInstr
            auto it = calleeEnv.find(ret);
            if (it != calleeEnv.end())
              envSet(env, call, it->second);
          }
          break; 
        }
      }
      return;
    }

    if (call->getType()->isIntegerTy()) {
      std::string sym = callee->getName().str() + "_ret";
      envSet(
          env, call,
          zctx->bv_const(sym.c_str(), call->getType()->getIntegerBitWidth()));
    }
  }

  void propagateCond(BasicBlock *BB, SymEnv &env,
                     map<BasicBlock *, z3::expr> &pathCond) {

    Instruction *term = BB->getTerminator();

    auto pcIt = pathCond.find(BB);
    z3::expr parentCond =
        (pcIt != pathCond.end()) ? pcIt->second : zctx->bool_val(false);

    if (auto *br = dyn_cast<BranchInst>(term)) {
      if (br->isUnconditional()) {
        mergePathCond(pathCond, br->getSuccessor(0), parentCond);
      } else {
        z3::expr rawCond = getOrMake(br->getCondition(), env, 1);
        z3::expr boolCond = (rawCond == zctx->bv_val(1, 1));
        mergePathCond(pathCond, br->getSuccessor(0), parentCond && boolCond);
        mergePathCond(pathCond, br->getSuccessor(1), parentCond && !boolCond);
      }
    } else if (auto *sw = dyn_cast<SwitchInst>(term)) {
      unsigned sw_w = sw->getCondition()->getType()->getIntegerBitWidth();
      z3::expr switchVal = getOrMake(sw->getCondition(), env, sw_w);
      z3::expr defaultCond = parentCond;

      for (auto &cas : sw->cases()) {
        z3::expr caseVal =
            zctx->bv_val(cas.getCaseValue()->getZExtValue(), sw_w);
        z3::expr caseCond = parentCond && (switchVal == caseVal);
        mergePathCond(pathCond, cas.getCaseSuccessor(), caseCond);
        defaultCond = defaultCond && !(switchVal == caseVal);
      }
      mergePathCond(pathCond, sw->getDefaultDest(), defaultCond);
    }
    
  }

  void mergePathCond(map<BasicBlock *, z3::expr> &pathCond, BasicBlock *succ,
                     z3::expr cond) {
    auto it = pathCond.find(succ);
    if (it == pathCond.end())
      pathCond.emplace(succ, cond);
    else
      it->second = it->second || cond;
  }

  void printResults() {
    llvm::outs() << "\n[SymbolicPass] Results\n";
    for (auto &[F, instrMap] : allSymExprs) {
      llvm::outs() << "Function: " << F->getName() << "  (" << instrMap.size()
                   << " instructions lifted)\n";
      for (auto &[I, expr] : instrMap) {
        llvm::outs() << "  ";
        I->print(llvm::outs());
        llvm::outs() << "\n    Z3: " << expr.to_string() << "\n";
      }
      llvm::outs() << "\n";
    }
  }
};

int main() {
  LLVMContext ctx;
  SMDiagnostic err;
  auto module = parseIRFile("../mayo.ll", err, ctx);

  if (!module) {
    err.print("error", errs());
    return 1;
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

  // Module Pass Manager
  ModulePassManager MPM;
  MPM.addPass(LevelPropPass());
  // MPM.addPass(SymbolicPass());

  // Run
  MPM.run(*module, MAM);
  return 0;
}