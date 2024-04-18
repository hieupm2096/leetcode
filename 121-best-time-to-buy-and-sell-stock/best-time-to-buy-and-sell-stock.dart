class Solution {
  int maxProfit(List<int> prices) {
    if (prices.length < 2) return 0;

    var l = 0, r = 1;
    var result = 0;

    while (r < prices.length) {
        final profit = prices[r] - prices[l];
        if (profit > 0) {
            if (result < profit) result = profit;
        }

        while (prices[l] > prices[r]) {
            l++;
        }

        r++;
    }

    return result;
  }
}