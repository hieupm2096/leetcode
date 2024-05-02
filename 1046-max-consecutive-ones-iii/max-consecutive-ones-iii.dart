class Solution {
  int longestOnes(List<int> nums, int k) {
    if (nums.length < 2) return nums.length;

    var l = 0, r = 0;
    var count = k;
    var max = 0;

    while (r < nums.length) {
        if (nums[r] == 0) {
            count--;
        }

        if (count == 0 || count > 0 && r == nums.length - 1) {
            if (r - l + 1 > max) max = r - l + 1;
        }

        while (count < 0 && l < nums.length) {
            if (nums[l] == 0) {
                count++;
            }
            l++;
        }

        r++;
    }


    return max;
  }
}