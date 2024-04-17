class Solution {
  int longestOnes(List<int> nums, int k) {
    if (nums.length < 2) return nums.length;

    var longest1 = 0, l = 0, r = 0, count = 0;

    while (r < nums.length) {
        var e = nums[r];

        if (e == 0) count++;

        while (count > k) {
            var e1 = nums[l];
            if (e1 == 0) count--;
            l++;
        }

        if (longest1 < r - l + 1) {
            longest1 = r - l + 1;
        }

        r++;
    }

    return longest1;
  }
}