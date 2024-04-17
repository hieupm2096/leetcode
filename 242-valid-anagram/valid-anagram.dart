class Solution {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) return false;

    final freqS = <String, int>{};
    final freqT = <String, int>{};

    for (var i = 0; i < s.length; i++) {
        freqS[s[i]] = (freqS[s[i]] ?? 0) + 1;
        freqT[t[i]] = (freqT[t[i]] ?? 0) + 1;
    }

    for (final key in freqS.keys) {
        if (freqS[key] != freqT[key]) return false;
    }

    return true;
  }
}