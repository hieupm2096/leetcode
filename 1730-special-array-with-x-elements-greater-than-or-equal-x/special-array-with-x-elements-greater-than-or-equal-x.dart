class Solution {
  int specialArray(List<int> nums) {
    nums.sort((a, b) => b.compareTo(a));

    final n = nums.length;

    for (var i = 0; i < n; i++) {
      if (nums[i] >= i + 1) {
        if (i == n - 1 || nums[i + 1] < i + 1) return i + 1;
      }
    }

    return -1;
  }
}
