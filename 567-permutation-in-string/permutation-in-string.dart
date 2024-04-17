class Solution {
  bool checkInclusion(String s1, String s2) {
    if (s1.length > s2.length) return false;

    var l = 0, r = 0;

    final freq = <String, int>{};

    for (int i = 0; i < s1.length; i++) {
        freq[s1[i]] = (freq[s1[i]] ?? 0) + 1;
    }

    var counter = freq.length;

    while (r < s2.length) {
        final c = s2[r];

        if (freq.containsKey(c)) {
            freq[c] = freq[c]! - 1;
            if (freq[c]! == 0) {
                counter--;
            }
        }

        while (counter == 0) {
            final c1 = s2[l];

            if (freq.containsKey(c1)) {
                freq[c1] = freq[c1]! + 1;
                if (freq[c1]! > 0) counter++;

                if (r - l + 1 == s1.length) return true;
            }

            l++;
        }

        r++;
    }

    return false;
  }
}