class Solution {
  int longestSubarray(List<int> nums) {
    if (nums.length == 1) return 0;
    var l = 0, r = 0;
    var count = 0, longest = 0;

    while (r < nums.length) {
        if (nums[r] == 0) count++;

        while (count > 1) {
            if (nums[l] == 0) count--;
            l++;
        }

        if (longest < r - l) longest = r - l;

        r++;
    }

    return longest;
  }
}