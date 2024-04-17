class Solution {
  int lengthOfLongestSubstring(String s) {
    if (s.length == 0) return 0;

    var l = 0, r = 0;
    final result = <String, int>{};
    var count = 0;
    var longest = 0;

    while (r < s.length) {
        final c = s[r];

        result[c] = (result[c] ?? 0) + 1;

        if (result[c]! == 1) {
            count++;
            if (count > longest) longest = count;
        } else {
            while (result[c]! > 1) {
                final c2 = s[l];

                if (result.containsKey(c2)) {
                    result[c2] = result[c2]! - 1;
                    if (result[c2]! == 0) count--;
                }

                l++;
            }
        }

        r++;
    }

    return longest;
  }
}