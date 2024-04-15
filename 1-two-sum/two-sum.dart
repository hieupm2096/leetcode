class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final dict = <int, int>{};
    for (int i = 0; i < nums.length; i++) {
        if (dict[target - nums[i]] != null) {
            return [i, dict[target - nums[i]]!];
        }
        dict[nums[i]] = i;
    }

    return [];
  }
}