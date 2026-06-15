#include "z3++.h"
using namespace z3;
using namespace std;

int main() {
  context ctx;
  solver tmp(ctx);

  for (expr e : ctx.parse_file("../z3_bv_correct.smt2"))
    tmp.add(e);

  // cout << tmp.check() << "\n";

  // model m = tmp.get_model();

  // for (auto p : {"b_1_exit", "b_2_path", "b_3_path", "b_4_exit", "b_5_path",
  //                "b_6_path", "b_7_exit", "b_8_path", "b_12_path"}) {
  //   cout << p << " = " << m.eval(ctx.bool_const(p), true) << "\n";
  // }

  tmp.push();
  tmp.add(ctx.bool_const("b_2_path"));
  cout << tmp.check() << "\n";
  tmp.pop();

  tmp.push();
  tmp.add(ctx.bool_const("b_2_path"));
  tmp.add(ctx.bool_const("b_3_path"));
  cout << tmp.check() << "\n";
  tmp.pop();
}