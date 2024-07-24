import 'dart:collection' show HashMap;

class Solution {
  List<int> sortJumbled(List<int> mapping, List<int> nums) {
    final mappedNums = HashMap<int, (int, int)>();

    for (var i = 0; i < nums.length; i++) {
      final e = nums[i];

      mappedNums[e] = (xMapped(e, mapping), i);
    }

    nums.sort((a, b) {
      final (x1, y1) = mappedNums[a]!;
      final (x2, y2) = mappedNums[b]!;
      final compareRes = x1.compareTo(x2);

      if (compareRes == 0) {
        return y1.compareTo(y2);
      }

      return compareRes;
    });

    return nums;
  }

  int xMapped(int x, List<int> mapping) {
    var res = 0;
    var t = 1;

    if (x == 0) return mapping[0];
  
    while (x > 0) {
      res += mapping[x % 10] * t;
      x = x ~/ 10;
      t *= 10;
    }

    return res;
  }
}