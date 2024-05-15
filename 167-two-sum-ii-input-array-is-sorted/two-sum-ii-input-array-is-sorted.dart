class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    final mp = <int, int>{};

    for (var i = 0; i < numbers.length; i++) {
      final e = numbers[i];

      if (mp.containsKey(e)) return [mp[e]! + 1, i + 1];

      mp[target - e] = i;
    }

    return [];
  }
}