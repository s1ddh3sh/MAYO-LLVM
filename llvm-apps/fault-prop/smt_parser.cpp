#include "z3++.h"
#include <set>

using namespace z3;
using namespace std;

expr extract_output(expr_vector &ev) {
  for (expr e : ev) {
    if (e.is_app() && e.decl().decl_kind() == Z3_OP_EQ) {
      expr lhs = e.arg(0);
      expr rhs = e.arg(1);

      std::string name = lhs.decl().name().str();
      if (name.find("ret") != std::string::npos) {
        return rhs;
      }
    }
  }
  throw std::runtime_error("Output not found");
}

expr substitute_vars(expr e, context &ctx, std::string suffix) {
  expr_vector from(ctx), to(ctx);

  std::set<std::string> seen;

  std::function<void(expr)> collect = [&](expr ex) {
    if (ex.is_const() && ex.num_args() == 0) {
      std::string name = ex.decl().name().str();
      if (seen.insert(name).second) {
        from.push_back(ex);
        to.push_back(ctx.constant((name + suffix).c_str(), ex.get_sort()));
      }
    }
    for (unsigned i = 0; i < ex.num_args(); i++)
      collect(ex.arg(i));
  };

  collect(e);

  return e.substitute(from, to);
}

int main() {
  context ctx;
  solver s(ctx);

  expr_vector correct = ctx.parse_file("correct.smt2");
  expr_vector faulty = ctx.parse_file("faulty_opB.smt2");

  expr outC = extract_output(correct);
  expr outF = extract_output(faulty);

  // cout << outC << "\n";
  // cout << outF;

  expr outC_b1 = substitute_vars(outC, ctx, "_b1");
  expr outF_b1 = substitute_vars(outF, ctx, "_b1");

  expr outC_b2 = substitute_vars(outC, ctx, "_b2");
  expr outF_b2 = substitute_vars(outF, ctx, "_b2");

  expr bvC_b1 = z3::to_expr(ctx, Z3_mk_int2bv(ctx, 32, outC_b1));
  expr bvF_b1 = z3::to_expr(ctx, Z3_mk_int2bv(ctx, 32, outF_b1));

  expr bvC_b2 = z3::to_expr(ctx, Z3_mk_int2bv(ctx, 32, outC_b2));
  expr bvF_b2 = z3::to_expr(ctx, Z3_mk_int2bv(ctx, 32, outF_b2));

  expr delta_b1 = bvC_b1 ^ bvF_b1;
  expr delta_b2 = bvC_b2 ^ bvF_b2;

  // cout << delta_b1 << "\n";
  // cout << delta_b2 << "\n";

  s.add(delta_b1 == ctx.bv_val(0, 32));
  s.add(delta_b2 != ctx.bv_val(0, 32));
  expr b1 = ctx.bv_const("i_1__b1", 32);
  expr b2 = ctx.bv_const("i_1__b2", 32);
  s.add(b1 != b2);

  if (s.check() == sat) {
    cout << "SAT \n";
    cout << s.get_model() << "\n";
  } else {
    cout << "UNSAT \n";
  }
}