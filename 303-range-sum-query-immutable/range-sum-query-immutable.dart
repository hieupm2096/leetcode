class NumArray {
  late final List<int> _nums;

  NumArray(List<int> nums) {
    _nums = nums;
  }
  
  int sumRange(int left, int right) {
    var sum = 0;
    for (var i = left; i < right + 1; i++) {
      sum += _nums[i];
    }

    return sum;
  }
}

/**
 * Your NumArray object will be instantiated and called as such:
 * NumArray obj = NumArray(nums);
 * int param1 = obj.sumRange(left,right);
 */