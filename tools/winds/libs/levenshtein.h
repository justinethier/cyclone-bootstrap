#include <stdio.h>
#include <string.h>

#define MIN3(a, b, c) ((a) < (b) ? ((a) < (c) ? (a) : (c)) : ((b) < (c) ? (b) : (c)))

size_t levenshtein(char const* s1, char const* s2) {

  size_t s1_len, s2_len, x, y, last_diagonal, old_diagonal;

  s1_len = strlen(s1);
  s2_len = strlen(s2);
 
  size_t column[s1_len + 1];
 
  for (y = 1; y <= s1_len; y++)
    column[y] = y;
 
  for (x = 1; x <= s2_len; x++) {
    column[0] = x;
    for (y = 1, last_diagonal = x - 1; y <= s1_len; y++) {
      old_diagonal = column[y];
      column[y] = MIN3(column[y] + 1, column[y - 1] + 1, last_diagonal + (s1[y-1] == s2[x - 1] ? 0 : 1));
      last_diagonal = old_diagonal;
    }
  }

  return column[s1_len];
}
