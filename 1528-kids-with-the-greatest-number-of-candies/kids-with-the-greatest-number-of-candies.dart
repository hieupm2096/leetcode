class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    if (candies.isEmpty) return [];

    var max = candies[0];

    final result = <bool>[];

    for (final candy in candies) {
        if (candy > max) max = candy;
    }

    for (final candy in candies) {
        result.add(candy + extraCandies >= max);
    }

    return result;
  }
}