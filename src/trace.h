#ifndef TRACE_H
#define TRACE_H

#include <stdint.h>
#include <stdio.h>

static FILE *__trace_file = NULL;
static int __trace_first = 1;

static inline void json_begin(const char *funcname) {
  char filename[256];
  snprintf(filename, sizeof(filename), "results/%s.json", funcname);

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

/* ---------- user macro ---------- */

#define PRINT_ARGS(funcname, ...)                                              \
  do {                                                                         \
    json_begin(funcname);                                                      \
    FOR_EACH(PRINT_ARG, __VA_ARGS__);                                          \
    json_end();                                                                \
  } while (0)

#endif