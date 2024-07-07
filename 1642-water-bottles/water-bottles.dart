class Solution {
  int numWaterBottles(int numBottles, int numExchange) {
    var ans = numBottles;
    var remainder = 0;

    while (numBottles > 0) {
      final t = numBottles + remainder;

      numBottles = t ~/ numExchange;
      remainder = t % numExchange;

      ans += numBottles;
    }

    return ans;
  }
}

// (15 + 0) ~/ 4 = 3, r = 3, ans = 15 + 3 = 18
// (3 + 3) ~/ 4 = 1, r = 2, ans = 18 + 1
// (1 + 2) ~/ 4 = 0, r = 3, ans = 19