import 'dart:math';

class Solution {
  double findMaxAverage(List<int> nums, int k) {
    var l = 0, r = 0;
    var max = pow(10, 4) * -1 * nums.length;
    var count = 0, sum = 0;
    while (r < nums.length) {
        sum += nums[r];

        if (count == k - 1) {
            count--;
            if (sum > max) max = sum;
            sum -= nums[l];
            l++;
        }

        r++;
        count++;
    }

    return max / k;
  }
}