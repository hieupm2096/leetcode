import 'dart:math' show max;

class Solution {
  int equalSubstring(String s, String t, int maxCost) {
    final n = s.length;

    final arr = List<int>.filled(n, 0);

    var noResult = true;

    for (var i = 0; i < n; i++) {
      final e = (s[i].codeUnitAt(0) - t[i].codeUnitAt(0)).abs();

      arr[i] = e;

      if (e <= maxCost) {
        noResult = false;
      }
    }

    if (noResult) return 0;

    var l = 0, r = 0, sum = 0;

    var res = 0;

    while (r < n) {
      sum += arr[r];

      if (sum <= maxCost) {
        res = max(res, r - l + 1);
      } else {
        while (sum > maxCost && l <= r) {
          sum -= arr[l];
          l++;
        }
      }

      r++;
    }

    return res;
  }
}