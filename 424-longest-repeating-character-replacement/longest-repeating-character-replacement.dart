class Solution {
  int characterReplacement(String s, int k) {
    if (s.length < 2) return s.length;

    var l = 0, r = 0;
    var maxFreq = 0;
    var d = 0;
    var result = 0;

    final freq = <String, int>{};

    while (r < s.length) {
        final c = s[r];

        freq[c] = (freq[c] ?? 0) + 1;

        if (freq[c]! > maxFreq) {
            maxFreq = freq[c]!;
        }

        final t = (r - l + 1) - maxFreq;

        if (t > k) {
            final c1 = s[l];

            freq[c1] = freq[c1]! - 1;

            l++;
        }

        if (r - l + 1 > result) {
            result = r - l + 1;
        }

        r++;
    }

    return result;
  }
}