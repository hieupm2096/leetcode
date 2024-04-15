class Solution {
  int majorityElement(List<int> nums) {
    final mp = <int, int>{};
    final mj = nums.length ~/ 2;

    for (final e in nums) {
        mp[e] = (mp[e] ?? 0) + 1;
        if (mp[e]! > mj) return e;
    }

    return nums[0];
  }
}