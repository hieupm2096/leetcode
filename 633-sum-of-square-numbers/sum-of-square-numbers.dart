import 'dart:math' show pow;

class Solution {
  bool judgeSquareSum(int c) {
    if (c == 1) return true;

    var l = 0, r = sqrt(c).toInt();

    while (l <= r) {
      final sum = pow(l, 2) + pow(r, 2);
      if (sum == c) {
        return true;
      } else if (sum < c) {
        l++;
      } else {
        r--;
      }
    }

    return false;
  }
}
