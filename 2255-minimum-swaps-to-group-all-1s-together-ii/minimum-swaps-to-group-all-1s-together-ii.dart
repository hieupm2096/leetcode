import 'dart:math' show max;

class Solution {
  int minSwaps(List<int> nums) {
    final x = nums.reduce((a, b) => a + b);

    if (x == nums.length) return 0;

    var currentSum = 0, maxSum = 0;

    var r = 0, l = 0;

    while (r < x) {
      currentSum += nums[r];
      maxSum = max(maxSum, currentSum);
      r++;
    }

    while (l < nums.length) {
      currentSum -= nums[l];
      currentSum += nums[r];

      // print('l: $l, r: $r, s: $currentSum');

      maxSum = max(maxSum, currentSum);

      l++;
      r++;

      if (r == nums.length) {
        r = 0;
      }
    }

    return x - maxSum;
  }
}