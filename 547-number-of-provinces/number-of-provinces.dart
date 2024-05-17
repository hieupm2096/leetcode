import 'dart:collection' show Queue, HashSet;

class Solution {
  int findCircleNum(List<List<int>> isConnected) {
    final queue = Queue<List<int>>();
    final visited = HashSet<int>();
    var res = 0;

    for (var i = 0; i < isConnected.length; i++) {
      if (visited.contains(i)) continue;

      visited.add(i);
      queue.addLast(isConnected[i]);

      while (queue.isNotEmpty) {
        final neighbors = queue.removeFirst();

        for (var i = 0; i < neighbors.length; i++) {
          if (visited.contains(i)) continue;
          if (neighbors[i] == 1) {
            queue.addLast(isConnected[i]);
            visited.add(i);
          }
        }
      }

      res++;
    }

    return res;
  }
}