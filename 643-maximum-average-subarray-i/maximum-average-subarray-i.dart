import 'dart:math';

class Solution {
  double findMaxAverage(List<int> nums, int k) {
    var l = 0, r = 0;
    int? max;
    var sum = 0;
    while (r < nums.length) {
        sum += nums[r];

        if (r - l + 1 == k) {
            if (max == null || sum > max!) max = sum;
            sum -= nums[l];
            l++;
        }

        r++;
    }

    return max! / k;
  }
}