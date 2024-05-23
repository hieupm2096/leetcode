import 'dart:math' show min;

class Solution {
  List<List<int>> combinationSum3(int k, int n) {
    // condition is from 1 to n, cause k >= 2
    final res = <List<int>>[];

    void dfs(List<int> arr, int total) {
      
      if (arr.length >= k) {
        if (total != 0) return;
        res.add([...arr]);
      }

      for (var i = (arr.lastOrNull ?? 0) + 1; i <= min(total, 9); i++) {
        arr.add(i);
        dfs(arr, total - i);
        arr.removeLast();
      }
    }

    dfs([], n);

    return res;
  }
}