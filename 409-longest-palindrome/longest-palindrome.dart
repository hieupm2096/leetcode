import 'dart:collection' show HashSet;

class Solution {
  int longestPalindrome(String s) {
    final chars = HashSet<String>();

    var res = 0;

    for (var i = 0; i < s.length; i++) {
      final c = s[i];

      if (chars.contains(c)) {
        res += 2;

        chars.remove(c);
      } else {
        chars.add(c);
      }
    }

    if (chars.isNotEmpty) {
      res++;
    }

    return res;
  }
}