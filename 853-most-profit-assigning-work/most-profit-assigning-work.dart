import 'dart:math' show max;

class Solution {
  int maxProfitAssignment(List<int> difficulty, List<int> profit, List<int> worker) {
    final dp = <(int, int)>[];

    var n = difficulty.length;

    worker.sort();

    for (var i = 0; i < n; i++) {
      if (difficulty[i] > worker.last) continue;

      dp.add((difficulty[i], profit[i]));
    }

    if (dp.isEmpty) return 0;

    dp.sort((a, b) => a.$1.compareTo(b.$1));

    var index = 0, ans = 0, maxProfit = 0;

    for (final ability in worker) {
      while (index < dp.length && ability >= dp[index].$1) {
        maxProfit = max(maxProfit, dp[index].$2);
        index++;
      }

      ans += maxProfit;
    }

    return ans;
  }
}
