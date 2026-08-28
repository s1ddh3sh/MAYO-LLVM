#ifndef TRACE_H
#define TRACE_H

#include <stdint.h>
#include <stdio.h>

static FILE *__trace_file = NULL;
static int __trace_first = 1;

static inline void json_begin(const char *funcname) {
  char filename[256];
  snprintf(filename, sizeof(filename), "../function_inputs/%s.json", funcname);

  __trace_file = fopen(filename, "a");
  if (!__trace_file)
    return;

  fprintf(__trace_file, "{");
  __trace_first = 1;
}

static inline void json_end(void) {
  if (!__trace_file)
    return;

  fprintf(__trace_file, "}\n");
  fclose(__trace_file);
  __trace_file = NULL;
}

static inline void json_sep(void) {
  if (!__trace_first)
    fprintf(__trace_file, ",");

  __trace_first = 0;
}

/*
 * Prints "output":"NAME" when there is exactly one output (matches the
 * original single-output format exactly, so existing consumers of
 * function_inputs/.json that expect sample["output"] to be a plain
 * string keep working unmodified), and "output":["A","B",...] when
 * there are two or more. Downstream (extract_qemu_witness.py's
 * derive_layout) must be updated to accept output_key as either a str
 * or a list before this is used on any function with >1 output.
 */
static inline void json_output_array(const char *const *outputs, size_t count) {
  json_sep();
  if (count == 1) {
    fprintf(__trace_file, "\"output\":\"%s\"", outputs[0]);
    return;
  }
  fprintf(__trace_file, "\"output\":[");
  for (size_t i = 0; i < count; i++) {
    fprintf(__trace_file, "%s\"%s\"", (i > 0) ? "," : "", outputs[i]);
  }
  fprintf(__trace_file, "]");
}

/* ---------- printers ---------- */
static inline void json_int(const char *name, int x) {
  json_sep();
  fprintf(__trace_file, "\"%s\":%d", name, x);
}

static inline void json_uint(const char *name, unsigned int x) {
  json_sep();
  fprintf(__trace_file, "\"%s\":%u", name, x);
}

static inline void json_ulong(const char *name, unsigned long x) {
  json_sep();
  fprintf(__trace_file, "\"%s\":%lu", name, x);
}

static inline void json_char_ptr(const char *name, char *p) {
  json_sep();
  fprintf(__trace_file, "\"%s\":%d", name, p ? (int)(unsigned char)(*p) : -1);
}

static inline void json_const_char_ptr(const char *name, const char *p) {
  json_sep();
  fprintf(__trace_file, "\"%s\":%d", name, p ? (int)(unsigned char)(*p) : -1);
}

static inline void json_uchar_ptr(const char *name, unsigned char *p) {
  json_sep();
  fprintf(__trace_file, "\"%s\":%u", name, p ? (unsigned)(*p) : 0);
}

static inline void json_const_uchar_ptr(const char *name,
                                        const unsigned char *p) {
  json_sep();
  fprintf(__trace_file, "\"%s\":%u", name, p ? (unsigned)(*p) : 0);
}

static inline void json_uint64_ptr(const char *name, const uint64_t *p) {
  json_sep();
  fprintf(__trace_file, "\"%s\":%llu", name,
          p ? (unsigned long long)(*p) : 0ULL);
}

static inline void json_const_uint64_ptr(const char *name, const uint64_t *p) {
  json_sep();
  fprintf(__trace_file, "\"%s\":%llu", name,
          p ? (unsigned long long)(*p) : 0ULL);
}

static inline void json_uchar(const char *name, unsigned char x) {
  json_sep();
  fprintf(__trace_file, "\"%s\":%u", name, (unsigned)x);
}

static inline void json_unknown(const char *name, ...) {
  json_sep();
  fprintf(__trace_file, "\"%s\":\"unknown\"", name);
}

/* ---------- dispatch ---------- */
#define PRINT_ARG(x)                                                           \
  _Generic((x),                                                                \
      int: json_int,                                                           \
      unsigned int: json_uint,                                                 \
      unsigned long: json_ulong,                                               \
      unsigned char: json_uchar,                                               \
      char *: json_char_ptr,                                                   \
      const char *: json_const_char_ptr,                                       \
      unsigned char *: json_uchar_ptr,                                         \
      const unsigned char *: json_const_uchar_ptr,                             \
      uint64_t *: json_uint64_ptr,                                             \
      const uint64_t *: json_const_uint64_ptr,                                 \
      default: json_unknown)(#x, (x))

/* ---------- FOR_EACH ---------- */
#define FE_1(WHAT, X) WHAT(X)
#define FE_2(WHAT, X, ...)                                                     \
  WHAT(X);                                                                     \
  FE_1(WHAT, __VA_ARGS__)
#define FE_3(WHAT, X, ...)                                                     \
  WHAT(X);                                                                     \
  FE_2(WHAT, __VA_ARGS__)
#define FE_4(WHAT, X, ...)                                                     \
  WHAT(X);                                                                     \
  FE_3(WHAT, __VA_ARGS__)
#define FE_5(WHAT, X, ...)                                                     \
  WHAT(X);                                                                     \
  FE_4(WHAT, __VA_ARGS__)
#define FE_6(WHAT, X, ...)                                                     \
  WHAT(X);                                                                     \
  FE_5(WHAT, __VA_ARGS__)
#define FE_7(WHAT, X, ...)                                                     \
  WHAT(X);                                                                     \
  FE_6(WHAT, __VA_ARGS__)
#define FE_8(WHAT, X, ...)                                                     \
  WHAT(X);                                                                     \
  FE_7(WHAT, __VA_ARGS__)
#define FE_9(WHAT, X, ...)                                                     \
  WHAT(X);                                                                     \
  FE_8(WHAT, __VA_ARGS__)
#define FE_10(WHAT, X, ...)                                                    \
  WHAT(X);                                                                     \
  FE_9(WHAT, __VA_ARGS__)

#define GET_MACRO(_1, _2, _3, _4, _5, _6, _7, _8, _9, _10, NAME, ...) NAME

#define FOR_EACH(action, ...)                                                  \
  GET_MACRO(__VA_ARGS__, FE_10, FE_9, FE_8, FE_7, FE_6, FE_5, FE_4, FE_3,      \
            FE_2, FE_1)                                                        \
  (action, __VA_ARGS__)

  #define PRINT_OUTPUT_ARRAY(...)                                                \
  do {                                                                         \
    const char *__outputs[] = { __VA_ARGS__ };                                 \
    size_t __count = sizeof(__outputs) / sizeof(__outputs[0]);                 \
    json_output_array(__outputs, __count);                                     \
  } while (0)


/* ---------- optional-parentheses detection ----------
 * Standard preprocessor trick: __MBC_IS_PAREN(x) expands to 1 if x is
 * syntactically "(...)", else 0. Lets PRINT_ARGS accept either a bare
 * "NAME" (single output, existing call-site syntax preserved exactly)
 * or a parenthesized ("A","B",...) list (multi-output), with no change
 * required at call sites that only ever had one output.
 */
#define __MBC_PROBE(...) ~, 1
#define __MBC_IS_PAREN_PROBE(...) __MBC_PROBE()
#define __MBC_CHECK_N(a, b, ...) b
#define __MBC_CHECK(...) __MBC_CHECK_N(__VA_ARGS__, 0)
#define __MBC_IS_PAREN(x) __MBC_CHECK(__MBC_IS_PAREN_PROBE x)

#define __MBC_CAT(a, b) a##b
#define __MBC_IIF(cond) __MBC_CAT(__MBC_IIF_, cond)
#define __MBC_IIF_0(t, f) f
#define __MBC_IIF_1(t, f) t

#define __MBC_DISPATCH_OUTPUT(x) \
  __MBC_IIF(__MBC_IS_PAREN(x))(PRINT_OUTPUT_ARRAY x, PRINT_OUTPUT_ARRAY (x))

/* If x is already "(...)", leave it as-is; otherwise wrap it: x -> (x) */
// #define __MBC_WRAP_IF_NEEDED(x) __MBC_IIF(__MBC_IS_PAREN(x))(x, (x))

/* ---------- user macro ---------- */

/* Helper macro to instantiate dynamic string arrays inside compound literals */

/*
 * output_args accepts either:
 *   "NAME"                 -- single output (unchanged existing syntax)
 *   ("NAME1", "NAME2", ...) -- two or more outputs
 *
 * Examples:
 *   PRINT_ARGS("compute_P3", "P3", p, P1, P2, O, P3);
 *   PRINT_ARGS("compute_M_and_VPV", ("VL", "VP1V"), p, Vdec, L, P1, VL, VP1V);
 */
#define PRINT_ARGS(funcname, output_args, ...)                                 \
  do {                                                                         \
    json_begin(funcname);                                                      \
    if (__trace_file) {                                                        \
      __MBC_DISPATCH_OUTPUT(output_args);                       \
      FOR_EACH(PRINT_ARG, __VA_ARGS__);                                        \
    }                                                                          \
    json_end();                                                                \
  } while (0)

#endif