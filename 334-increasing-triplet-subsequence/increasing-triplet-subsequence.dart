class Solution {
  bool increasingTriplet(List<int> nums) {
    if (nums.length < 3) return false;

    const INT_MAX = -1 >>> 1;

    var a = INT_MAX, b = INT_MAX;

    for (final e in nums) {
        if (e <= a) {
            a = e;
        } else if (e <= b) {
            b = e;
        } else {
            return true;
        }
    }

    return false;
  }
}