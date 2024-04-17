class Solution {
  int lengthOfLongestSubstring(String s) {
    if (s.length < 2) return s.length;

    var l = 0, r = 0;
    final freq = <String, int>{};
    var counter = 0;
    var result = 0;

    while (r < s.length) {
        final c = s[r];
        freq[c] = (freq[c] ?? 0) + 1;

        if (freq[c]! == 1) {
            counter++;
            if (counter > result) result = counter;
        }

        while (freq[c]! > 1) {
            final c2 = s[l];

            if (freq.containsKey(c2)) {
                freq[c2] = freq[c2]! - 1;

                if (freq[c2]! == 0) counter--;
            }
            
            l++;
        }

        r++;
    }

    return result;
  }
}