class Solution {
  List<int> findAnagrams(String s, String p) {
    if (s.length < p.length) return [];

    final result = <int>[];

    final ref = <String, int>{};

    for (var i = 0; i < p.length; i++) {
        final c = p[i];
        ref[c] = (ref[c] ?? 0) + 1;
    }

    var begin = 0, end = 0, match = 0;

    final mp = <String, int>{};

    while (end < s.length) {
        final c = s[end];
        if (ref.containsKey(c)) {
            mp[c] = (mp[c] ?? 0) + 1;

            if (mp[c] == ref[c]) match++;
        }

        // add the result and reset mp, increase begin
        while (match == ref.length) {
            if (end - begin + 1 == p.length) result.add(begin);

            final c2 = s[begin];

            if (ref.containsKey(c2)) {
                mp[c2] = mp[c2]! - 1;
                if (mp[c2]! < ref[c2]!) match--;
            }

            begin++;
        }

        end++;
    }

    return result;
  }
}
