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
    cerr << "Cannot open file: " << filename << "\n";
    exit(1);
  }

  ostringstream oss;
  string line;
  int removed = 0;

  while (getline(ifs, line)) {
    // Trim leading whitespace for comparison
    string trimmed = line;
    trimmed.erase(0, trimmed.find_first_not_of(" \t"));

    if (trimmed == "(assert and)") {
      removed++;
      continue; // skip invalid assertion
    }

    // Also skip "(assert (not true))" and "(check-sat)"
    if (trimmed == "(assert (not true))" || trimmed == "(check-sat)") {
      continue;
    }

    oss << line << "\n";
  }

  cerr << "[clean] Removed " << removed << " invalid '(assert and)' lines from "
       << filename << "\n";
  return oss.str();
}

// Write cleand content to a temp file and return its path
string write_temp(const string &content, const string &suffix) {
  string path = "/tmp/z3_temp_" + suffix + ".smt2";
  ofstream ofs(path);
  ofs << content;
  return path;
}

// Recursively collect array select expressions where index name contains needle
void collect_selects(expr e, map<string, set<string>> &sel_map,
                     const string &needle, set<Z3_ast> &visited) {
  Z3_ast raw = (Z3_ast)e;
  if (visited.count(raw))
    return;
  visited.insert(raw);

  if (!e.is_app())
    return;

  func_decl f = e.decl();

  if (f.decl_kind() == Z3_OP_SELECT) {
    expr mem = e.arg(0);
    expr idx = e.arg(1);

    string mem_name = mem.decl().name().str();
    string idx_name = idx.decl().name().str();

    if (idx_name.find(needle) != string::npos) {
      sel_map[mem_name].insert(idx_name);
    }
  }

  for (unsigned i = 0; i < e.num_args(); i++) {
    collect_selects(e.arg(i), sel_map, needle, visited);
  }
}

int main(int argc, char *argv[]) {
  string correct_file = (argc > 1) ? argv[1] : "../correct.smt2";
  string faulty_file = (argc > 2) ? argv[2] : "../funcSkip.smt2";

  string correct_smt = clean_smt2(correct_file);
  string faulty_smt = clean_smt2(faulty_file);

  string correct_tmp = write_temp(correct_smt, "correct");
  string faulty_tmp = write_temp(faulty_smt, "faulty");

  context ctx;

  expr_vector correct_exprs = ctx.parse_file(correct_tmp.c_str());
  expr_vector faulty_exprs = ctx.parse_file(faulty_tmp.c_str());

  solver s(ctx);

  // Add all parsed assertions
  for (expr e : correct_exprs)
    s.add(e);
  for (expr e : faulty_exprs)
    s.add(e);

  cout << "Loaded " << correct_exprs.size() << " correct assertions\n";
  cout << "Loaded " << faulty_exprs.size() << " faulty assertions\n";

  map<string, set<string>> corr_map, fault_map;
  set<Z3_ast> visited_c, visited_f;

  for (expr e : correct_exprs)
    collect_selects(e, corr_map, "i_6_a_correct", visited_c);

  for (expr e : faulty_exprs)
    collect_selects(e, fault_map, "i_6_a_faulty", visited_f);

  cout << "\nArray select sites (correct): " << corr_map.size() << "\n";
  cout << "Array select sites (faulty):  " << fault_map.size() << "\n\n";

  z3::sort arr_sort = ctx.array_sort(ctx.int_sort(), ctx.int_sort());
  int constraints_added = 0;

  for (auto &[mem_c_name, idx_set] : corr_map) {
    // Derive faulty memory name
    string mem_f_name = mem_c_name;
    size_t pos = mem_f_name.find("_correct");
    if (pos == string::npos)
      continue;
    mem_f_name.replace(pos, 8, "_faulty");

    if (!fault_map.count(mem_f_name))
      continue;

    expr mem_c = ctx.constant(mem_c_name.c_str(), arr_sort);
    expr mem_f = ctx.constant(mem_f_name.c_str(), arr_sort);

    for (const string &idx_c_name : idx_set) {
      string idx_f_name = idx_c_name;
      size_t p2 = idx_f_name.find("_correct");
      if (p2 == string::npos)
        continue;
      idx_f_name.replace(p2, 8, "_faulty");

      if (!fault_map[mem_f_name].count(idx_f_name))
        continue;

      expr idx_c = ctx.int_const(idx_c_name.c_str());
      expr idx_f = ctx.int_const(idx_f_name.c_str());

      // Assert: value at index in correct == value at index in faulty
      expr constraint = (select(mem_c, idx_c) == select(mem_f, idx_f));
      s.add(constraint);

      cout << "  select(" << mem_c_name << ", " << idx_c_name << ")"
           << " == "
           << "select(" << mem_f_name << ", " << idx_f_name << ")\n";
      constraints_added++;
      break;
    }
  }

  cout << "\nTotal equality constraints added: " << constraints_added << "\n\n";



  //solver
  cout << "Running Z3...\n";
  check_result result = s.check();

  if (result == sat) {
    cout << "Result: SAT\n";
    model m = s.get_model();
    cout << "Model has " << m.size() << " declarations\n";
    // cout << m << "\n";
  } else if (result == unsat) {
    cout << "Result: UNSAT\n";
  } else {
    cout << "Result: UNKNOWN\n";
    cout << "Reason: " << s.reason_unknown() << "\n";
  }

  return 0;
}