class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    if (numbers.length == 2) {
      if (numbers[0] + numbers[1] == target) return [1, 2];
      return [];
    }

    var l = 0, r = numbers.length - 1;

    while (l < r) {
      final sum = numbers[l] + numbers[r];

      if (sum == target) {
        return [l + 1, r + 1];
      } else if (sum < target) {
        l++;
      } else {
        r--;
      };
    }

    return [];
  }
}