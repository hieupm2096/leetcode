class Solution {
  int maximumStrongPairXor(List<int> nums) {
    if (nums.length == 1) return 0;

    var max = 0;

    nums.sort();

    var l = 0, r = 0;

    while (r < nums.length) {
        var x = nums[l], y = nums[r];

        if (y - x > x) {
            l++;
            continue;
        }

        for (var i = l; i <= r; i++) {
            if (max < nums[i] ^ y) max = nums[i] ^ y;
        }

        r++;
    }

    return max;
  }
}