class Solution {
  int longestConsecutive(List<int> nums) {
    if (nums.length == 0) return 0;

    final mp = Set<int>.from(nums);

    var max = 0;

    for (final e in mp) {
      // find starting point of consecutive sequence
      if (!mp.contains(e - 1)) {
        var count = 1;

        var t = e + 1;

        while (mp.contains(t)) {
          count++;
          t++;
        }

        if (max < count) max = count;
      }
    }
    
    return max;
  }
}
