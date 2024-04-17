class Solution {
  int lengthOfLongestSubstring(String s) {
    if (s.length < 2) return s.length;

    var l = 0, r = 0;
    final freq = <String, int>{};
    var counter = 0, result = 0;

    while (r < s.length) {
        final c = s[r];

        freq[c] = (freq[c] ?? 0) + 1;

        if (freq[c]! == 1) {
            counter++;
            if (result < counter) result = counter;
        }

        while (freq[c]! > 1) {
            final c1 = s[l];

            freq[c1] = freq[c1]! - 1;

            if (freq[c1]! == 0) counter--;

            l++;
        }

        r++;
    }

    return result;
  }
}