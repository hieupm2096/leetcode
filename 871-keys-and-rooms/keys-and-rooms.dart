import 'dart:collection';

class Solution {
  bool canVisitAllRooms(List<List<int>> rooms) {
    final visitedRooms = <int>{};
    final queue = Queue<List<int>>();

    visitedRooms.add(0);
  
    queue.addLast(rooms[0]);

    while (queue.isNotEmpty) {
      final room = queue.removeFirst();

      for (final key in room) {
        if (visitedRooms.contains(key)) continue;

        visitedRooms.add(key);

        queue.addLast(rooms[key]);
      }
    }

    return rooms.length == visitedRooms.length;
  }
}