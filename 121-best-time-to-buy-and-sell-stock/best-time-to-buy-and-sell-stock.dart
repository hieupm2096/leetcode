class Solution {
  int maxProfit(List<int> prices) {
    if (prices.length < 2) return 0;

    var l = 0, r = 1;
    var max = 0;

    while (r < prices.length) {
        if (prices[r] < prices[l]) {
            l = r;
        } else {
            final profit = prices[r] - prices[l];
            if (profit > max) max = profit;
        }

        r++;
    }

    return max;
  }
}