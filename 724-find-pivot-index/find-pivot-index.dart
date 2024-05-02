class Solution {
  int pivotIndex(List<int> nums) {
    final prefix = List<int>.filled(nums.length, 0);
    final suffix = List<int>.filled(nums.length, 0);
    for (var i = 1; i < nums.length; i++) {
        prefix[i] += prefix[i - 1] + nums[i - 1];
    }

    for (var i = nums.length - 2; i >= 0; i--) {
        suffix[i] += suffix[i + 1] + nums[i + 1];
    }

    for (var i = 0; i < nums.length; i++) {
        if (prefix[i] == suffix[i]) return i;
    }

    return -1;
  }
}