class Solution {
  List<int> countBits(int n) {
    final result = <int>[];

    for (var i = 0; i < n + 1; i++) {
      var count = 0;

      var t = i;

      while (t != 0) {
        count += t % 2;
        t = t ~/ 2;
      }

      result.add(count);
    }

    return result;
  }
}