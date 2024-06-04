import 'dart:collection' show HashMap;
import 'dart:math' show max;

class Solution {
  int longestPalindrome(String s) {
    final freq = HashMap<String, int>();

    var res = 0, hasOdd = false;

    for (var i = 0; i < s.length; i++) {
      final c = s[i];

      freq[c] = (freq[c] ?? 0) + 1;
    }

    for (final e in freq.values) {
      if (e % 2 == 0) {
        res += e;
      } else {
        hasOdd = true;
        res += e - 1;
      }
    }

    res += hasOdd ? 1 : 0;

    return res;
  }
}