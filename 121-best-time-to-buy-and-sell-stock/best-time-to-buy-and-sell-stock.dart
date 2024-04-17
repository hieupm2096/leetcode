class Solution {
  int maxProfit(List<int> prices) {
    if (prices.length < 2) return 0;

    var l = 0, r = 1;
    var max = 0;

    while (r < prices.length) {
        final profit = prices[r] - prices[l];
        if (profit > max) max = profit;
        if (profit < 0) {
            l = r;
        }
        r++;
    }

    return max;
  }
}