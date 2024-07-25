class Solution {
  List<int> sortArray(List<int> nums) {
    for (var i = 0; i < nums.length; i++) {
      var currentIndex = i;

      while (currentIndex > 0 && nums[currentIndex] < nums[currentIndex - 1]) {
        final temp = nums[currentIndex];
        nums[currentIndex] = nums[currentIndex - 1];
        nums[currentIndex - 1] = temp;

        currentIndex--;
      }
    }

    return nums;
  }
}