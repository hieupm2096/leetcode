import 'dart:collection' show Queue;

class Solution {
  int findTheWinner(int n, int k) {
    final q = Queue<int>();

    for (var i = 1; i <= n; i++) {
      q.addLast(i);
    }

    var count = k;

    while (q.length > 1) {
      count--;

      final curr = q.removeFirst();

      if (count != 0) {
        q.addLast(curr);
      } else {
        count = k;
      }
    }

    return q.first;
  }
}
