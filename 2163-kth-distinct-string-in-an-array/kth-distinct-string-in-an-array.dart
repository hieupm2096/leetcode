import 'dart:collection' show HashMap;

class Solution {
  String kthDistinct(List<String> arr, int k) {
    final mp = HashMap<String, int>();

    final s = arr.toSet();

    for (final e in arr) {
      mp[e] = (mp[e] ?? 0) + 1;

      if (mp[e]! > 1) {
        s.remove(e);
      }
    }

    if (k - 1 >= s.length) return "";

    return s.toList()[k - 1];
  }
}