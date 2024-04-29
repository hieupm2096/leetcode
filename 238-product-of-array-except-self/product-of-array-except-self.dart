class Solution {
  List<int> productExceptSelf(List<int> nums) {
    var curr = 1;
    final result = List.filled(nums.length, 1);

    for (var i = 0; i < nums.length; i++) {
        result[i] *= curr;
        curr *= nums[i];
    }

    curr = 1;

    for (var i = nums.length - 1; i >= 0; i--) {
        result[i] *= curr;
        curr *= nums[i];
    }

    return result;
  }
}