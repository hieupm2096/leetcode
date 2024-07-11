class Solution {
  String reverseParentheses(String s) {
    final opened = <int>[];

    final pair = List<int>.filled(s.length, 0);

    for (var i = 0; i < s.length; i++) {
      final c = s[i];

      if (c == '(') {
        opened.add(i);
      }

      if (c == ')') {
        // pairing up
        final open = opened.removeLast();
        pair[open] = i;
        pair[i] = open;
      }
    }

    var result = '', curr = 0, direction = 1;

    while (curr < s.length) {
      if (s[curr] == '(' || s[curr] == ')') {
        // jump and change direction
        curr = pair[curr];
        direction = -direction;
      } else {
        result += s[curr];
      }

      curr += direction;
    }

    return result;
  }
}