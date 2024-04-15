class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final dict = <int, int>{};
    for (var i = 0; i < nums.length; i++) {
        final compliment = target - nums[i];

        if (dict.containsKey(compliment)) {
            return [i, dict[compliment]!];
        }

        dict[nums[i]] = i;
    }

    return [];
  }
}