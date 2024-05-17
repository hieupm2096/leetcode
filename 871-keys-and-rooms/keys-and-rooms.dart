import 'dart:collection' show HashSet;

class Solution {
  final visited = HashSet<int>();

  bool canVisitAllRooms(List<List<int>> rooms) {
    visited.add(0);

    _dfs(0, rooms);

    return visited.length == rooms.length;
  }

  void _dfs(int vertex, List<List<int>> rooms) {
    final neighbors = rooms[vertex];

    for (final neighbor in neighbors) {
      if (visited.contains(neighbor)) continue;

      visited.add(neighbor);

      _dfs(neighbor, rooms);
    }
  }
}