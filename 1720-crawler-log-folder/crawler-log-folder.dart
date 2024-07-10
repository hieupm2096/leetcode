// '../' parent folder, './' remain, 'x/' child folder
// start at main folder
// process: keep track of number of added child folder
// using a stack
// [] -> [d1] -> [d1, d2] -> [d1] -> [d1, d2] -> [d1, d2]
// to go back to main folder -> pop the op from stack
// the min number of ops needed to go back to main folder = stack.length

class Solution {
  int minOperations(List<String> logs) {
    var count = 0;

    for (final op in logs) {
      if (op == './') {
        // do nothing
      } else if (op == '../') {
        if (count != 0) {
          count--;
        }
      } else {
        count++;
      }
    }

    return count;
  }
}