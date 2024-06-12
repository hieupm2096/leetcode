class Solution {
  void sortColors(List<int> nums) {
    if (nums.length == 1) return;

    final mp = <int, int>{};

    for (final e in nums) {
      mp[e] = (mp[e] ?? 0) + 1;
    }

    var currentIndex = 0;

    for (var i = 0; i < 3; i++) {
      if (!mp.containsKey(i)) continue;

      for (var j = currentIndex; j < currentIndex + mp[i]!; j++) {
        nums[j] = i;
      }

      currentIndex = currentIndex + mp[i]!;
    }
  }
}