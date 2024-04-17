class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final mp = <int, int>{};

    for (var i = 0; i < nums.length; i++) {
        if (mp.containsKey(nums[i])) return [mp[nums[i]]!, i];
        mp[target - nums[i]] = i;
    }

    return [];
  }
}