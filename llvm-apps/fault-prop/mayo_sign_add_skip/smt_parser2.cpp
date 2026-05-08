#include "z3++.h"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <map>
#include <set>
#include <sstream>
#include <string>

using namespace z3;
using namespace std;

// Strip invalid "(assert and)" lines from SMT2 content
string clean_smt2(const string &filename) {
  ifstream ifs(filename);
  if (!ifs) {
    cerr << "Cannot open: " << filename << "\n";
    exit(1);
  }
  ostringstream oss;
  string line;
  int removed = 0;
  while (getline(ifs, line)) {
    string trimmed = line;
    trimmed.erase(0, trimmed.find_first_not_of(" \t"));
    if (trimmed == "(assert and)") {
      removed++;
      continue;
    }
    if (trimmed == "(assert (not true))" || trimmed == "(check-sat)")
      continue;
    oss << line << "\n";
  }
  cerr << "[clean] Removed " << removed << " '(assert and)' lines from "
       << filename << "\n";
  return oss.str();
}

string write_temp(const string &content, const string &suffix) {
  string path = "/tmp/z3_temp_" + suffix + ".smt2";
  ofstream ofs(path);
  ofs << content;
  return path;
}

int main(int argc, char *argv[]) {
  string correct_file = (argc > 1) ? argv[1] : "../correct.smt2";
  string faulty_file = (argc > 2) ? argv[2] : "../funcSkip.smt2";

  string correct_smt = clean_smt2(correct_file);
  string faulty_smt = clean_smt2(faulty_file);

  string correct_tmp = write_temp(correct_smt, "correct");
  string faulty_tmp = write_temp(faulty_smt, "faulty");

  context ctx;
  solver s(ctx);

  expr_vector correct_exprs = ctx.parse_file(correct_tmp.c_str());
  expr_vector faulty_exprs = ctx.parse_file(faulty_tmp.c_str());

  // Add all assertions
  for (expr e : correct_exprs)
    s.add(e);
  for (expr e : faulty_exprs)
    s.add(e);

  cout << "Loaded " << correct_exprs.size() << " correct assertions\n";
  cout << "Loaded " << faulty_exprs.size() << " faulty assertions\n";

  z3::sort arr = ctx.array_sort(ctx.int_sort(), ctx.int_sort());
  for (int i = 1; i <= 235; i++) {
    string name = "b_" + to_string(i) + "_path";
    s.add(ctx.bool_const(name.c_str()));
  }
  cout << "Forcing all 235 path booleans to true\n";

  s.add(ctx.int_const("i_6_a_correct") == ctx.int_const("i_6_a_faulty"));
  s.add(ctx.int_const("i_7_b_correct") == ctx.int_const("i_7_b_faulty"));
  s.add(ctx.int_const("i_8_c_correct") == ctx.int_const("i_8_c_faulty"));

  s.add(ctx.constant("c_1_Global_M_correct", arr) ==
        ctx.constant("c_1_Global_M_faulty", arr));

  expr a = ctx.int_const("i_6_a_correct");
  expr b = ctx.int_const("i_7_b_correct");
  expr c = ctx.int_const("i_8_c_correct");

  s.add(a >= 0 && a < 256);
  s.add(b >= 0 && b < 256);
  s.add(c >= 0 && c < 256);
  s.add(a != b);
  expr mem = ctx.constant("c_1_Global_M_correct", arr);
  expr val_a = select(mem, a);
  expr val_b = select(mem, b);

  s.add(val_a >= 0 && val_a <= 255);
  s.add(val_b >= 0 && val_b <= 255);

  s.add(val_b != 0);

  s.add(ctx.constant("c_314_Global_M_correct", arr) !=
        ctx.constant("c_314_Global_M_faulty", arr));

  // solver
  cout << "Running solver...\n";
  check_result result = s.check();

  if (result == sat) {
    cout << "Result: SAT\n";
    model m = s.get_model();
    cout << "Model size " << m.size() << "\n";
    auto ev = [&](expr e) { return m.eval(e, true); };

    cout << "  i_6_a = " << ev(a) << "\n";
    cout << "  i_7_b = " << ev(b) << "\n";
    cout << "  i_8_c = " << ev(c) << "\n";
    cout << "  M[a]  = " << ev(val_a) << "\n";
    cout << "  M[b]  = " << ev(val_b) << "\n";
    cout << "  Correct: c_4[i_8_c] = M[a] XOR M[b] = " << ev(val_a) << " XOR "
         << ev(val_b) << "\n";
    cout << "  Faulty:  c_4[i_8_c] = M[a] = " << ev(val_a) << "\n";

  } else if (result == unsat) {
    cout << "Result: UNSAT\n";
  } else {
    cout << "Result: UNKNOWN\n";
    cout << "Reason: " << s.reason_unknown() << "\n";
  }

  return 0;
}