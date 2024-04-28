class Solution {
  String reverseWords(String s) {
    if (s.isEmpty) return '';

    final result = <String>[];

    var flipped = false;
    var begin = 0;

    for (var i = 0; i < s.length; i++) {
        if (s[i] != ' ' && !flipped) {
            flipped = true;
            begin = i;
        }

        if ((s[i] == ' ' || i == s.length - 1) && flipped) {
            result.add(s.substring(begin, i + 1).trim());
            flipped = false;
        }
    }

    return result.reversed.join(' ');
  }
}