class Solution {
  void sortColors(List<int> nums) {
    if (nums.length == 1) return;
    
    for (var i = 0; i < nums.length; i++) {
      var minIndex = i;

      for (var j = i + 1; j < nums.length; j++) {
        if (nums[j] < nums[minIndex]) minIndex = j;
      }

      final temp = nums[i];
      nums[i] = nums[minIndex];
      nums[minIndex] = temp;
    }
  }
}