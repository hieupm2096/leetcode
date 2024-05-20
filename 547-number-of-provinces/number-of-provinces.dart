import 'dart:collection' show HashSet;

class Solution {
  int findCircleNum(List<List<int>> isConnected) {
    final visited = <int>{};

    var res = 0;

    for (var i = 0; i < isConnected.length; i++) {
      if (visited.contains(i)) continue;

      _dfs(isConnected, visited, i);

      res++;
    }

    return res;
  }

  void _dfs(List<List<int>> isConnected, Set<int> visited, int currentNode) {
    final node = isConnected[currentNode];

    for (var i = 0; i < node.length; i++) {
      if (currentNode == i || visited.contains(i)) continue;

      if (node[i] == 1) {
        visited.add(i);
        _dfs(isConnected, visited, i);
      }
    }
  }
}