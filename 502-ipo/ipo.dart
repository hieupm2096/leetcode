import 'package:collection/collection.dart' show PriorityQueue;

class Solution {
  int findMaximizedCapital(int k, int w, List<int> profits, List<int> capital) {
    // create a list of pair of (profit, capital)
    final n = profits.length;

    final cp = <(int, int)>[];

    for (var i = 0; i < n; i++) {
      cp.add((capital[i], profits[i]));
    }

    // sort cp to make the lowest capitals come first
    cp.sort((a, b) => a.$1.compareTo(b.$1));

    // for k projects, we need to find the lowest capital but highest profit,
    // we already know the lowest capital cause cp was sorted, we need to find
    // the highest profit during lowest capital, to do that we use priority queue

    var cpIndex = 0;

    final pq = PriorityQueue<int>((a, b) => b.compareTo(a));

    for (var i = 0; i < k; i++) {
      while (cpIndex < n && cp[cpIndex].$1 <= w) {
        pq.add(cp[cpIndex].$2);
        cpIndex++;
      }

      if (pq.isEmpty) break;

      w += pq.removeFirst();
    }

    return w;
  }
}
