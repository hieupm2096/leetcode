class Solution {
  int waysToSplitArray(List<int> nums) {
    // find the prefixSum
    final prefixSum = List.filled(nums.length - 1, 0);
    final suffixSum = List.filled(nums.length - 1, 0);

    var ans = 0;

    for (var i = 0; i < nums.length - 1; i++) {
        final k = nums.length - i - 1;

        final t = k - 1;

        if (i == 0) {
            prefixSum[i] = nums[i];
            suffixSum[t] = nums[k];
        } else {
            prefixSum[i] = prefixSum[i - 1] + nums[i];
            suffixSum[t] = suffixSum[t + 1] + nums[k];
        }
    }

    for (var i = 0; i < prefixSum.length; i++) {
        if (prefixSum[i] >= suffixSum[i]) {
            ans++;
        }
    }

    return ans;
  }
}

// prefixSum = [0, 10, 14, 6], suffixSum = [3, -1, 7, 0]
// prefixSum[1] = 10, suffixSum[0] = 3 -> res++
// prefixSum[2] = 14, suffixSum[1] = -1 -> res++