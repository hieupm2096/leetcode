class Solution {
  int minPatches(List<int> nums, int n) {
    var ans = 0;

    var missing = 1, i = 0;

    while (missing <= n) {
      if (i < nums.length && nums[i] <= missing) {
        missing += nums[i];
        i++;
      } else {
        missing += missing;
        ans++;
      }
    }

    return ans;
  }
}