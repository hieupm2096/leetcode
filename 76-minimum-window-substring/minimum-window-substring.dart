class Solution {
  String minWindow(String s, String t) {
    if (s.length < t.length) return '';

    final mp = <String, int>{};

    for (int i = 0; i < t.length; i++) {
        mp[t[i]] = (mp[t[i]] ?? 0) + 1;
    }

    var l = 0, r = 0;
    var count = mp.length;
    
    var result = '';

    while (r < s.length) {
        final c = s[r];

        if (mp.containsKey(c)) {
            mp[c] = mp[c]! - 1;
            if (mp[c] == 0) count--;
        }

        while (count == 0) {
            // set the result
            final temp = s.substring(l, r + 1);

            if (result.length == 0 || temp.length < result.length) result = temp;

            final c1 = s[l];

            if (mp.containsKey(c1)) {
                mp[c1] = mp[c1]! + 1;
                if (mp[c1]! > 0) count++;
            }

            l++;
        }

        r++;
    }

    return result;
  }
}