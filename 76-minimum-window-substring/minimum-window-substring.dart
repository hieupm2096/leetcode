class Solution {
  String minWindow(String s, String t) {
    if (s.length < t.length) return '';

    final mp = <String, int>{};

    for (int i = 0; i < t.length; i++) {
        mp[t[i]] = (mp[t[i]] ?? 0) + 1;
    }

    var l = 0, r = 0, start = 0;
    int? end;
    var count = mp.length;

    while (r < s.length) {
        final c = s[r];

        if (mp.containsKey(c)) {
            mp[c] = mp[c]! - 1;
            if (mp[c] == 0) count--;
        }

        while (count == 0) {
            // set the result
            if (end == null || r - l < end! - start) {
                start = l;
                end = r;
            }

            final c1 = s[l];

            if (mp.containsKey(c1)) {
                mp[c1] = mp[c1]! + 1;
                if (mp[c1]! > 0) count++;
            }

            l++;
        }

        r++;
    }

    if (end == null) return '';

    return s.substring(start, end! + 1);
  }
}