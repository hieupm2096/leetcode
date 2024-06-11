class Solution {
  List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
    if (arr2.length == 1) return arr1;

    final freq = <int, List<int>>{};

    final sub = <int>[];

    final set2 = arr2.toSet();

    for (final e in arr1) {
      if (set2.contains(e)) {
        if (!freq.containsKey(e)) {
          freq[e] = <int>[];
        }
        freq[e]!.add(e);
      } else {
        sub.add(e);
      }
    }

    final res = <int>[];

    for (final e in arr2) {
      if (freq.containsKey(e)) {
        res.addAll(freq[e]!);
      }
    }

    sub.sort();

    res.addAll(sub);

    return res;
  }
}