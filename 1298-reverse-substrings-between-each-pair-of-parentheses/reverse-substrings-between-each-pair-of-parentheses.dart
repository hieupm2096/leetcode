class Solution {
  String reverseParentheses(String s) {
    final stack = <String>[];

    for (var i = 0; i < s.length; i++) {
      final c = s[i];

      stack.add(c);

      if (stack.last == ')') {
        // remove ')' from stack
        stack.removeLast();

        final temp = <String>[];
        while (stack.last != '(') {
          temp.add(stack.removeLast());
        }

        // remove '(' from stack
        stack.removeLast();

        stack.addAll(temp);
      }
    }

    return stack.join();
  }
}