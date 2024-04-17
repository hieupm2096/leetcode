class Solution {
  bool containsDuplicate(List<int> nums) {;
    final freq = <int, int>{};

    for (final e in nums) {
        freq[e] = (freq[e] ?? 0) + 1;
        if (freq[e]! > 1) return true;
    }

    return false;
  }
}