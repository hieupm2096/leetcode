class Solution {
  int maxArea(List<int> height) {
    var l = 0, r = height.length - 1;
    var max = 0;
    while (l < r) {
        final h = height[l] < height[r] ? height[l] : height[r];

        final amount = (r - l) * h;

        if (amount > max) max = amount;

        if (height[l] < height[r]) {
            l++;
        } else {
            r--;
        }
    }

    return max;
  }
}