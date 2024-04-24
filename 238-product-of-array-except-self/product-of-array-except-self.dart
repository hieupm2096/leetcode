class Solution {
  List<int> productExceptSelf(List<int> nums) {
    if (nums.isEmpty) return [];

    final answer = List.filled(nums.length, 1);

    var curr = 1;
    for (var i = 0; i < nums.length; i++) {
        answer[i] *= curr;
        curr *= nums[i];
    }

    curr = 1;
    for (var i = nums.length - 1; i >= 0; i--) {
        answer[i] *= curr;
        curr *= nums[i];
    }
    
    return answer;
  }
}