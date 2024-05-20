class Solution {
  bool isValid(String s) {
    if (s.length == 1) return false;

    final stack = <String>[s[0]];

    final matches = {
      '(': ')',
      '{': '}',
      '[': ']',
    };

    for (var i = 1; i < s.length; i++) {
      if (matches.containsKey(s[i])) {
        stack.add(s[i]);
      } else if (stack.isEmpty) {
        return false;
      } else {
        if (matches[stack.last] == s[i]) {
          stack.removeLast();
        } else {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}