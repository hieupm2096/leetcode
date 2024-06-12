class Solution {
  void sortColors(List<int> nums) {
    if (nums.length == 1) return;

    final mp = <int, int>{};

    for (final e in nums) {
      mp[e] = (mp[e] ?? 0) + 1;
    }

    nums.clear();

    for (var i = 0; i < 3; i++) {
      final count = mp[i] ?? 0;

      nums.addAll(List.filled(count, i));
    }
  }
}