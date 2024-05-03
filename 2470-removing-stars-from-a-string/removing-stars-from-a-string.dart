class Solution {
  String removeStars(String s) {
    final stack = <String>[];

    for (var i = 0; i < s.length; i++) {
        final c = s[i];

        if (c == '*') {
            stack.removeLast();
        } else {
            stack.add(c);
        }
    }

    return stack.join('');
  }
}
