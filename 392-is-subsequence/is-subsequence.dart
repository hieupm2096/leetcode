class Solution {
  bool isSubsequence(String s, String t) {
    var i = 0, j = 0;
    while (j < t.length && i < s.length) {
        if (s[i] == t[j]) {
            i++;
        }
        j++;
    }
    
    return i == s.length;
  }
}