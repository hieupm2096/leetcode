class Solution {
  int maxVowels(String s, int k) {
    var l = 0, r = 0;
    int? max;
    var count = 0;
    while (r < s.length) {
        if (s[r].isVowel()) {
            count++;
        }

        if (r - l + 1 == k) {
            if (max == null || count > max!) max = count;
            if (s[l].isVowel()) count--;
            l++;
        }

        r++;
    }

    return max!;
  }
}

extension on String {
    bool isVowel() {
        return this == 'a' || this == 'e' || this == 'i' || this == 'o' || this == 'u';
    }
}