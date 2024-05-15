class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    if (numbers.length == 2) {
      if (numbers[0] + numbers[1] == target) return [1, 2];
      return [];
    }

    var l = 0, r = numbers.length - 1;

    while (l < r) {
      final left = numbers[l], right = numbers[r];

      if (left + right == target) {
        return [l + 1, r + 1];
      } else if (left + right < target) {
        l++;
      } else {
        r--;
      };
    }

    return [];
  }
}