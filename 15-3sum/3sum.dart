class Solution {
  List<List<int>> threeSum(List<int> nums) {
    nums.sort();

    final result = <List<int>>[];

    for (var i = 0; i < nums.length - 2; i++) {
      if (nums[i] > 0) break;

      if (i > 0 && nums[i] == nums[i - 1]) continue;

      var j = i + 1, k = nums.length - 1;

      while (j < k) {
        final total = nums[i] + nums[j] + nums[k];

        if (total > 0) {
          k--;
        } else if (total < 0) {
          j++;
        } else {
          result.add([nums[i], nums[j], nums[k]]);
          
          j++;

          while (nums[j] == nums[j - 1] && j < k) {
            j++;
          }
        }
      }
    }

    return result;
  }
}
