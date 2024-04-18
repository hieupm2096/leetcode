class Solution {
  bool containsNearbyDuplicate(List<int> nums, int k) {
    if (nums.length < 2) return false;

    final mp = <int, int>{};

    for (var i = 0; i < nums.length; i++) {
        final e = nums[i];

        if (mp.containsKey(e)) {
            final t = (mp[e]! - i).abs();
            if (t <= k) return true;
        }

        mp[e] = i;
    }

    return false;
  }
}