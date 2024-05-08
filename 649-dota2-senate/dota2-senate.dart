import 'dart:collection';

class Solution {
  String predictPartyVictory(String senate) {
    if (senate.length == 1) return senate == 'R' ? 'Radiant' : 'Dire';

    final rad = Queue<int>();
    final dir = Queue<int>();

    for (var i = 0; i < senate.length; i++) {
      if (senate[i] == 'R') {
        rad.add(i);
      } else {
        dir.add(i);
      }
    }

    if (rad.isEmpty) return 'Dire';
    if (dir.isEmpty) return 'Radiant';

    var count = senate.length;

    while (rad.isNotEmpty && dir.isNotEmpty) {
      final r = rad.removeFirst();
      final d = dir.removeFirst();

      if (r < d) {
        rad.add(count);
      } else {
        dir.add(count);
      }

      count++;
    }

    return rad.isNotEmpty ? 'Radiant' : 'Dire';
  }
}