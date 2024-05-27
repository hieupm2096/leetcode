class Solution {
  int findPeakElement(List<int> nums) {
    if (nums.length == 1) return 0;
    if (nums[0] > nums[1]) return 0;

    final n = nums.length;

    if (nums[n - 1] > nums[n - 2]) return n - 1;

    var start = 1, end = n - 2;

    while (start <= end) {
      final mid = start + (end - start) ~/ 2;

      if (nums[mid] > nums[mid - 1] && nums[mid] > nums[mid + 1]) {
        return mid;
      } else if (nums[mid] < nums[mid + 1]) {
        start = mid + 1;
      } else if (nums[mid] < nums[mid - 1]) {
        end = mid - 1;
      }
    }

    return -1;
  }
}