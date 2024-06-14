class Solution {
  int minIncrementForUnique(List<int> nums) {
    if (nums.length == 1) return 0;

    final freq = <int, int>{};

    nums.sort();

    for (final e in nums) {
      freq[e] = (freq[e] ?? 0) + 1;
    }

    var ans = 0;

    final keys = List<int>.from(freq.keys);

    for (final key in keys) {
      // because the array was sorted, we could bypass 1 count case
      if (freq[key] == 1) continue;

      var step = 0;
      var e = key;

      while (freq[key]! > 1) {
        freq[key] = freq[key]! - 1;

        while (freq.containsKey(e)) {
          e++;
          step++;
        }

        ans += step;
        freq[e] = 1;
      }
    }

    return ans;
  }
}

// 1 - 2. 2 - 2. 3 - 1. 7 - 1 O(n)
// 1 -> 1 