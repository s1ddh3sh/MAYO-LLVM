#include "z3++.h"
#include <set>

using namespace z3;
using namespace std;

expr extract_store_value(expr_vector &ev, context &ctx) {
  for (expr e : ev) {
    if (e.is_app() && e.decl().decl_kind() == Z3_OP_EQ) {
      expr rhs = e.arg(1);

      // match (= c_next (store ...))
      if (rhs.is_app() && rhs.decl().decl_kind() == Z3_OP_STORE) {
        // store has 3 args: (store A i v)
        return rhs.arg(2); // VALUE
      }
    }
  }
  throw std::runtime_error("Store value not found");
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
  expr_vector faulty = ctx.parse_file("funcSkip.smt2");

  expr valC = extract_store_value(correct, ctx);
  expr valF = extract_store_value(faulty, ctx);

  {
    // cout << "Correct : \n" << valC << "\n";
    // cout << "Faulty : \n" << valF << "\n";

    expr s1 = int2bv(8, valC);
    expr s2 = int2bv(8, valF);

    expr delta = s1 ^ s2;

    expr delta_s = ctx.bv_const("delta_p", 8);

    expr mem = ctx.constant("c_3_Global_M",
                            ctx.array_sort(ctx.int_sort(), ctx.int_sort()));

    expr i_a = ctx.int_const("i_6_a");
    expr i_b = ctx.int_const("i_7_b");

    expr a = select(mem, i_a);
    expr b_int = select(mem, i_b);

    expr b = int2bv(8, select(mem, ctx.int_const("i_7_b")));

    s.add(a >= 0 && a < 16);
    s.add(b_int >= 0 && b_int < 16);
    s.add(a != b_int);

    s.add(delta != ctx.bv_val(0, 8));
    s.add(s1 != s2);
    // s.add(delta_p != delta);
    // s.add(delta == b);

    s.add(s1 == (s2 ^ delta_s));
  }
  // {
  //   expr valC_b1 = substitute_vars(valC, ctx, "_b1");
  //   expr valF_b1 = substitute_vars(valF, ctx, "_b1");

  //   expr valC_b2 = substitute_vars(valC, ctx, "_b2");
  //   expr valF_b2 = substitute_vars(valF, ctx, "_b2");

  //   // cout << "Correct : \n" << valC_b1 << "\n";
  //   // cout << "Faulty : \n" << valF_b1 << "\n";
  //   // cout << "Correct : \n" << valC_b2 << "\n";
  //   // cout << "Faulty : \n" << valF_b2 << "\n";

  //   expr delta_b1 = int2bv(8, valC_b1) ^ int2bv(8, valF_b1);
  //   expr delta_b2 = int2bv(8, valC_b2) ^ int2bv(8, valF_b2);

  //   // cout << delta_b1 << "\n";
  //   // cout << delta_b2 << "\n";

  //   expr mem_b1 = ctx.constant("c_3_Global_M_b1",
  //                              ctx.array_sort(ctx.int_sort(),
  //                              ctx.int_sort()));
  //   expr mem_b2 = ctx.constant("c_3_Global_M_b2",
  //                              ctx.array_sort(ctx.int_sort(),
  //                              ctx.int_sort()));

  //   expr i_a_b1 = ctx.int_const("i_6_a_b1");
  //   expr i_a_b2 = ctx.int_const("i_6_a_b2");

  //   expr i_b_b1 = ctx.int_const("i_7_b_b1");
  //   expr i_b_b2 = ctx.int_const("i_7_b_b2");

  //   expr a1 = select(mem_b1, i_a_b1);
  //   expr a2 = select(mem_b2, i_a_b2);

  //   expr b1 = select(mem_b1, i_b_b1);
  //   expr b2 = select(mem_b2, i_b_b2);

  //   s.add(i_a_b1 == i_a_b2);
  //   s.add(a1 == a2);
  //   s.add(b1 != b2);

  //   s.add(a1 >= 0 && a1 < 16);
  //   s.add(b1 >= 0 && b1 < 16);
  //   s.add(b2 >= 0 && b2 < 16);

  //   // s.add(a1 >= 0 && a1 < 16);
  //   // s.add(a2 >= 0 && a2 < 16);

  //   // s.add(b1 >= 0 && b1 < 16);
  //   // s.add(b2 >= 0 && b2 < 16);

  //   s.add(delta_b1 != delta_b2);

  //   // s.add(b1 != b2);
  //   // s.add(delta_b1 == ctx.bv_val(0, 8));
  //   // s.add(delta_b2 != ctx.bv_val(0, 8));
  // }
  if (s.check() == unsat) {
    cout << "NO leak from delta \n";
  } else {
    cout << s.get_model() << "\n";
    cout << "secret leak si=vi \n";
  }
}