class Solution {
  int maxScore(String s) {
    var c0 = 0, c1 = 0, res = -1;
    for (var i = 0; i < s.length; i++) {
        if (s[i] == '1') {
            c1++;
        }
    }

    print(c1);

    for (var i = 0; i < s.length - 1; i++) {
        if (s[i] == '0') {
            c0++;
        } else {
            c1--;
        }

        if (c0 + c1 > res) {
            res = c0 + c1;
        }
    }

    return res;
  }
}