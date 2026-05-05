#include "z3++.h"
#include <fstream>
#include <iostream>
#include <map>
#include <regex>
#include <set>

using namespace z3;
using namespace std;

// Extract all variables matching pattern "i_*_a_correct" or "i_*_a_faulty" from
void collect_selects(expr e, map<string, set<string>> &sel_map) {
  if (e.is_app()) {
    func_decl f = e.decl();

    // Check for select
    if (f.decl_kind() == Z3_OP_SELECT) {
      expr mem = e.arg(0);
      expr idx = e.arg(1);

      string mem_name = mem.to_string();
      string idx_name = idx.to_string();

      // Only care about i_6_a
      if (idx_name.find("i_6_a") != string::npos) {
        sel_map[mem_name].insert(idx_name);
      }
    }

    // Recurse on children
    for (unsigned i = 0; i < e.num_args(); i++) {
      collect_selects(e.arg(i), sel_map);
    }
  }
}

int main() {
  context ctx;
  solver s(ctx);

  // Parse both SMT files
  cout << "Parsing smt2 files\n";
  expr_vector correct = ctx.parse_file("../correct.smt2");
  expr_vector faulty = ctx.parse_file("../funcSkip.smt2");

  for (expr e : correct)
    s.add(e);
  for (expr e : faulty)
    s.add(e);

  // Extract selects

  map<string, set<string>> corr_map;
  map<string, set<string>> fault_map;

  for (expr e : correct) {
    collect_selects(e, corr_map);
  }

  for (expr e : faulty) {
    collect_selects(e, fault_map);
  }

  size_t corr_count = 0, fault_count = 0;

  for (auto &kv : corr_map)
    corr_count += kv.second.size();

  for (auto &kv : fault_map)
    fault_count += kv.second.size();

  cout << "Correct selects: " << corr_count << "\n";
  cout << "Faulty  selects: " << fault_count << "\n\n";

  cout << "Adding equality constraints on a-values:\n";

  int constraints_added = 0;

  for (auto &kv : corr_map) {
    string mem_corr = kv.first;

    // Build faulty name
    string mem_fault = mem_corr;
    size_t pos = mem_fault.find("_correct");
    if (pos == string::npos)
      continue;

    mem_fault.replace(pos, 8, "_faulty");

    if (fault_map.find(mem_fault) == fault_map.end())
      continue;

    expr mem_c = ctx.constant(mem_corr.c_str(),
                              ctx.array_sort(ctx.int_sort(), ctx.int_sort()));

    expr mem_f = ctx.constant(mem_fault.c_str(),
                              ctx.array_sort(ctx.int_sort(), ctx.int_sort()));

    for (string idx_str : kv.second) {
      pos = idx_str.find("_correct");
      if (pos == string::npos)
        continue;

      idx_str.replace(pos, 8, "_faulty");
      if (fault_map[mem_fault].count(idx_str) == 0) {
        continue;
      }

      expr idx_c = ctx.int_const(idx_str.c_str());
      expr idx_f = ctx.int_const(idx_str.c_str());

      expr val_c = select(mem_c, idx_c);
      expr val_f = select(mem_f, idx_f);

      s.add(val_c != val_f);
      // s.add(select(mem_c, idx_c) == select(mem_f, idx_f));

      cout << "select(" << mem_corr << ", " << idx_str << ") == "
           << "select(" << mem_fault << ", " << idx_str << ")\n";

      constraints_added++;
    }
  }

  cout << "\nTotal constraints added: " << constraints_added << "\n\n";
  cout << "Checking SAT...\n";

  if (s.check() == sat) {
    cout << "SAT\n";
    cout << s.get_model() << "\n";
  } else {
    cout << "UNSAT\n";
  }
  return 0;
}
