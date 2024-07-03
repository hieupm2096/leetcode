import 'dart:math' show min;

class Solution {
  int minDifference(List<int> nums) {
    if (nums.length <= 4) return 0;

    nums.sort();

    final n = nums.length;

    var ans = 10000000000;

    for (var left = 0, right = n - 4; left < 4; left++, right++) {
      ans = min(ans, nums[right] - nums[left]);
    }

    return ans;
  }
}

// 0 1 5, 5 10 14