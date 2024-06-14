class Solution {
  int minIncrementForUnique(List<int> nums) {
    if (nums.length == 1) return 0;

    final freq = <int, int>{};

    nums.sort();

    var ans = 0;

    for (var i = 1; i < nums.length; i++) {
      if (nums[i] <= nums[i - 1]) {
        ans += nums[i - 1] - nums[i] + 1;
        nums[i] = nums[i - 1] + 1;
      }
    }

    return ans;
  }
}

// 1 - 2. 2 - 2. 3 - 1. 7 - 1 O(n)
// 1 -> 1 