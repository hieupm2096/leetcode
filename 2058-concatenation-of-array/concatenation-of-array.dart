class Solution {
  List<int> getConcatenation(List<int> nums) {
    final answer = List<int>.filled(nums.length * 2, 0);

    for (var i = 0; i < nums.length; i++) {
        answer[i] = nums[i];
        answer[i + nums.length] = nums[i];
    }

    return answer;
  }
}