class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    final freq = <int, int>{};

    for (final e in nums1) {
      freq[e] = (freq[e] ?? 0) + 1;
    }

    final ans = <int>[];

    for (final e in nums2) {
      if (freq.containsKey(e) && freq[e]! > 0) {
        ans.add(e);
        freq[e] = freq[e]! - 1;
      }
    }

    return ans;
  }
}