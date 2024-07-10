// '../' parent folder, './' remain, 'x/' child folder
// start at main folder
// process: keep track of number of added child folder
// using a stack
// [] -> [d1] -> [d1, d2] -> [d1] -> [d1, d2] -> [d1, d2]

class Solution {
  int minOperations(List<String> logs) {
    final stack = <String>[];

    for (final op in logs) {
      if (op == './') {
        // do nothing
      } else if (op == '../') {
        if (stack.isNotEmpty) {
          stack.removeLast();
        }
      } else {
        stack.add(op);
      }
    }

    return stack.length;
  }
}