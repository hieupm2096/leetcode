class Solution {
  int appendCharacters(String s, String t) {
    var i = 0, k = 0;

    while (i < s.length && k < t.length) {
      if (s[i] == t[k]) {
        k++;
      }

      i++;
    }

    return t.length - k;
  }
}