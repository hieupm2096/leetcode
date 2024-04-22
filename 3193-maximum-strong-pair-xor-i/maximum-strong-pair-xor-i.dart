import 'dart:math';

class Solution {
  int maximumStrongPairXor(List<int> nums) {
    var max = -99999;
    for (var i = 0; i < nums.length; i++) {
        for (var j = 0; j < nums.length; j++) {
            final x = nums[i], y = nums[j];
            if ((x - y).abs() <= min(x, y) && max < x ^ y) {
                max = x ^ y;
            }
        }
    }

    return max;
  }
}