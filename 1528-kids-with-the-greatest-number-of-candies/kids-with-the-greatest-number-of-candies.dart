class Solution {
  List<bool> kidsWithCandies(List<int> candies, int extraCandies) {
    if (candies.isEmpty) return [];

    final maximum = candies.reduce(max);

    return candies.map((e) => e + extraCandies >= maximum).toList();
  }
}