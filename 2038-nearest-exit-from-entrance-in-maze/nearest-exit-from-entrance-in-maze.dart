import 'dart:collection' show HashSet, Queue;

class Solution {
  int nearestExit(List<List<String>> maze, List<int> entrance) {
    final m = maze.length, n = maze[0].length;

    final tupleMaze = {
      for (var i = 0; i < m; i++)
        for (var j = 0; j < n; j++) (i, j): maze[i][j]
    };

    final tupleEntrance = (entrance[0], entrance[1]);

    final visited = HashSet<(int, int)>();
    visited.add(tupleEntrance);

    final queue = Queue<(int, int)>();
    queue.addLast(tupleEntrance);

    var res = 0;

    bool isBorder((int, int) cell) {
      return cell.$1 == 0 || cell.$1 == m - 1 || cell.$2 == 0 || cell.$2 == n - 1;
    }

    bool checkCell((int, int) cell) {
      if (!tupleMaze.containsKey(cell) || visited.contains(cell)) {
        return false;
      } else if (tupleMaze[cell] == '+') {
        visited.add(cell);
        return false;
      } else {
        visited.add(cell);
        return true;
      }
    }

    var subsets = <(int, int)>[];

    while (queue.isNotEmpty) {
      final curr = queue.removeFirst();

      if (curr != tupleEntrance && isBorder(curr)) return res;

      final left = (curr.$1, curr.$2 - 1);

      if (checkCell(left)) subsets.add(left);

      final top = (curr.$1 - 1, curr.$2);

      if (checkCell(top)) subsets.add(top);

      final right = (curr.$1, curr.$2 + 1);

      if (checkCell(right)) subsets.add(right);

      final bottom = (curr.$1 + 1, curr.$2);

      if (checkCell(bottom)) subsets.add(bottom);

      if (queue.isEmpty) {
        res++;
        queue.addAll(subsets);
        subsets = [];
      }
    }

    return -1;
  }
}


// + + . +
// . . . +
// + + + .

// + . + + + + +
// + . + . . . +
// + . + . + . +
// + . . . + . +
// + + + + + . +