class Solution {
  bool uniqueOccurrences(List<int> arr) {
    final freq = <int, int>{};
    for (final e in arr) {
        freq[e] = (freq[e] ?? 0) + 1;
    }

    final freqSet = freq.values.toSet();

    return freqSet.length == freq.values.length;
  }
}