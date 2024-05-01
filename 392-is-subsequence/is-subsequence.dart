class Solution {
  bool isSubsequence(String s, String t) {
    var i = 0, j = 0;
    var result = List<bool>.filled(s.length, false);
    while (i < s.length && j < t.length) {
        if (s[i] == t[j]) {
            result[i] = true;
            i++;
        }
        j++;
    }
    
    return result.every((e) => e);

  }
}