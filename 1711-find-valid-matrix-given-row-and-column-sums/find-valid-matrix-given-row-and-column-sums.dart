import 'dart:math' show min;

class Solution {
  List<List<int>> restoreMatrix(List<int> rowSum, List<int> colSum) {
    final m = rowSum.length;
    final n = colSum.length;

    final res = List<List<int>>.generate(m, (_) => List<int>.filled(n, 0));

    for (var i = 0; i < m; i++) {
      for (var j = 0; j < n; j++) {
        final val = min(rowSum[i], colSum[j]);

        res[i][j] = val;
        rowSum[i] -= val;
        colSum[j] -= val;
      }
    }

    return res;
  }
}