class Solution {
  String predictPartyVictory(String senate) {
    if (senate.length == 1) return senate == 'R' ? 'Radiant' : 'Dire';

    final rad = <int>[];
    final dir = <int>[];

    for (var i = 0; i < senate.length; i++) {
      final c = senate[i];

      if (c == 'R') {
        rad.add(i);
      } else {
        dir.add(i);
      }
    }

    if (rad.isEmpty) return 'Dire';
    if (dir.isEmpty) return 'Radiant';

    var count = senate.length;

    while (rad.isNotEmpty && dir.isNotEmpty) {
      final r = rad.removeAt(0);
      final d = dir.removeAt(0);

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