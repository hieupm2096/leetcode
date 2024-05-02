class Solution {
  List<List<int>> findDifference(List<int> nums1, List<int> nums2) {
    final set1 = nums1.toSet();
    final set2 = nums2.toSet();

    for (final e in nums1) {
        if (set2.contains(e)) {
            set2.remove(e);
        }
    }

    for (final e in nums2) {
        if (set1.contains(e)) {
            set1.remove(e);
        }
    }

    return [set1.toList(), set2.toList()];
  }
}