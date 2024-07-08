import 'dart:collection' show Queue;

class Solution {
  int findTheWinner(int n, int k) {
    final q = Queue<int>();

    for (var i = 1; i <= n; i++) {
      q.add(i);
    }

    var count = k;

    while (q.length > 1) {
      count--;

      final curr = q.removeFirst();

      if (count == 0) {
        count = k;
      } else {
        q.addLast(curr);
      }
    }

    return q.first;
  }
}