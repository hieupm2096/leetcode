class Solution {
  List<int> relativeSortArray(List<int> arr1, List<int> arr2) {
    if (arr2.length == 1) return arr1;

    final freq = <int, List<int>>{};

    final sub = <int>[];

    // n = arr1.length, m = arr2.length

    // O(m)
    for (final e in arr2) {
      freq[e] = <int>[];
    }

    // O(n)
    for (final e in arr1) {
      if (freq.containsKey(e)) {
        freq[e]!.add(e);
      } else {
        sub.add(e);
      }
    }

    // O(m)
    final res = freq.values.expand((e) => e).toList();

    // O((n - m)log(n - m))
    sub.sort();

    // O(n - m)
    res.addAll(sub);

    // to sum up: O(m + n + m + (n-m) + (n-m)log(n- m))
    // = O(m + n + (n - m)log(n - m))
    return res;
  }
}