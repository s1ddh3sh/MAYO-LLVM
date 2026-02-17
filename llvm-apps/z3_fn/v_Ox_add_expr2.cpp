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

#include <map>
#include <stdio.h>
using namespace llvm;

static const int O_COLS = 4;

// Helper function to safely get or default init z3::expr from map
z3::expr safe_get(std::map<Value *, z3::expr> &m, Value *k, z3::context &ctx, int width = 4)
{
    auto it = m.find(k);
    if (it != m.end())
        return it->second;
    return ctx.bv_val(0, width);
}

z3::expr gf_add(const z3::expr &a, const z3::expr &b)
{
    return a ^ b;
}

z3::expr gf_mul(z3::context &ctx, const z3::expr &a, const z3::expr &b)
{

    z3::expr p = ctx.bv_val(0, 8);

    z3::expr a_ext = z3::zext(a, 4);
    z3::expr b_ext = z3::zext(b, 4);

    for (int i = 0; i < 4; i++)
    {
        z3::expr bit = a_ext.extract(i, i); // <-- correct API

        z3::expr shifted = z3::shl(b_ext, ctx.bv_val(i, 8));

        p = p ^ z3::ite(bit == ctx.bv_val(1, 1),
                        shifted,
                        ctx.bv_val(0, 8));
    }

    // reduction mod x^4 + x + 1

    z3::expr top = p.extract(7, 4);
    z3::expr low = p.extract(3, 0);

    z3::expr reduced = low ^ top ^ z3::shl(top, ctx.bv_val(1, 4));

    return reduced & ctx.bv_val(0xF, 4);
}

int main()
{

    LLVMContext llvm_ctx;
    SMDiagnostic err;

    auto module = parseIRFile("../mayo.ll", err, llvm_ctx);
    if (!module)
    {
        std::cout << "Failed to load IR\n";
        return 1;
    }

    Function *F = module->getFunction("mayo_sign_signature");
    if (!F)
    {
        std::cout << "Function not found\n";
        return 1;
    }

    // Find for.body112
    BasicBlock *target = nullptr;
    for (auto &BB : *F)
    {
        if (BB.getName() == "for.body112")
        {
            target = &BB;
            break;
        }
    }

    if (!target)
    {
        std::cout << "Block not found\n";
        return 1;
    }

    z3::context ctx;

    std::map<Value *, z3::expr> val;
    std::map<Value *, z3::expr> mem;

    // Vdec symbolic
    for (int i = 0; i < 10; i++)
    {
        mem.insert_or_assign((Value *)(uintptr_t)(0x100000 + i),
                             ctx.bv_const(("Vdec_" + std::to_string(i)).c_str(), 4));
    }

    // O symbolic
    for (int i = 0; i < 10; i++)
    {
        mem.insert_or_assign((Value *)(uintptr_t)(0x200000 + i),
                             ctx.bv_const(("O_" + std::to_string(i)).c_str(), 4));
    }

    // x symbolic
    for (int i = 0; i < 10; i++)
    {
        mem.insert_or_assign((Value *)(uintptr_t)(0x300000 + i),
                             ctx.bv_const(("x_" + std::to_string(i)).c_str(), 4));
    }

    for (auto &I : *target)
    {

        if (auto *load = dyn_cast<LoadInst>(&I))
        {

            Value *src = load->getPointerOperand();
            val.insert_or_assign(&I, safe_get(mem, src, ctx, 4));
        }

        else if (auto *store = dyn_cast<StoreInst>(&I))
        {

            z3::expr v = safe_get(val, store->getValueOperand(), ctx, 4);
            Value *dst = store->getPointerOperand();
            mem.insert_or_assign(dst, v);
        }

        else if (auto *bin = dyn_cast<BinaryOperator>(&I))
        {

            z3::expr a = safe_get(val, bin->getOperand(0), ctx, 4);
            z3::expr b = safe_get(val, bin->getOperand(1), ctx, 4);

            z3::expr result = ctx.bv_val(0, 4);
            switch (bin->getOpcode())
            {

            case Instruction::Add:
                result = a + b;
                break;

            case Instruction::Sub:
                result = a - b;
                break;

            case Instruction::Mul:
                result = a * b;
                break;
            }
            val.insert_or_assign(&I, result);
        }

        else if (auto *gep = dyn_cast<GetElementPtrInst>(&I))
        {

            continue;
        }

        else if (auto *call = dyn_cast<CallInst>(&I))
        {

            Function *callee = call->getCalledFunction();
            if (!callee)
                continue;

            std::string name = callee->getName().str();

            /* ===== mat_mul ===== */

            if (name == "mat_mul")
            {

                Value *O_ptr = call->getArgOperand(0);
                Value *x_ptr = call->getArgOperand(1);
                Value *Ox_ptr = call->getArgOperand(2);

                int param_o = 8;
                int rows = 10;

                for (int r = 0; r < rows; r++)
                {

                    z3::expr acc = ctx.bv_val(0, 4);

                    for (int t = 0; t < param_o; t++)
                    {

                        z3::expr O_elem =
                            ctx.bv_const(("O_" + std::to_string(r) + "_" + std::to_string(t)).c_str(), 4);

                        z3::expr x_elem =
                            ctx.bv_const(("x_" + std::to_string(t)).c_str(), 4);

                        acc = gf_add(acc, gf_mul(ctx, O_elem, x_elem));
                    }

                    mem.insert_or_assign((Value *)(uintptr_t)(0x400000 + r), acc);
                }
            }

            else if (name == "mat_add")
            {

                Value *vi_ptr = call->getArgOperand(0);
                Value *Ox_ptr = call->getArgOperand(1);
                Value *s_ptr = call->getArgOperand(2);

                int rows = 10;

                for (int r = 0; r < rows; r++)
                {

                    z3::expr v =
                        ctx.bv_const(("Vdec_" + std::to_string(r)).c_str(), 4);

                    z3::expr Ox = safe_get(mem, (Value *)(uintptr_t)(0x400000 + r), ctx, 4);

                    z3::expr result = gf_add(v, Ox);

                    mem.insert_or_assign((Value *)(uintptr_t)(0x500000 + r), result);
                }
            }
            else if (name == "memcpy")
            {

                Value *dst = call->getArgOperand(0);
                Value *src = call->getArgOperand(1);

                mem.insert_or_assign(dst, safe_get(mem, src, ctx, 4));
            }
        }
    }

    z3::solver solver(ctx);
    // solver.add(Ox);

    for (auto &ent : mem)
    {
        if (ent.second.is_bool())
            solver.add(ent.second);
    }

    std::cout << solver;
    std::cout << "\nSymbolic expressions for s = v + O*x\n\n";

    for (int r = 0; r < 10; r++)
    {

        z3::expr e = safe_get(mem, (Value *)(uintptr_t)(0x500000 + r), ctx, 4);

        std::cout << "Expressions for s[" << r << "] => \n\n " << e << "\n\n";
    }

    return 0;
}