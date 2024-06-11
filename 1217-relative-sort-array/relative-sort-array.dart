class Solution {
  List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
    if (arr2.length == 1) return arr1;

    final freq = <int, List<int>>{};

    final sub = <int>[];

    for (final e in arr2) {
      freq[e] = <int>[];
    }

    for (final e in arr1) {
      if (freq.containsKey(e)) {
        freq[e]!.add(e);
      } else {
        sub.add(e);
      }
    }

    final res = freq.values.expand((e) => e).toList();

    sub.sort();

    res.addAll(sub);

    return res;
  }
}