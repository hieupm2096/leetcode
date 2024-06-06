class Solution {
  bool isNStraightHand(List<int> hand, int groupSize) {
    hand.sort();

    final mp = <int, int>{};

    for (final e in hand) {
      mp[e] = (mp[e] ?? 0) + 1;
    }

    for (final key in mp.keys) {
      if (mp[key]! == 0) continue;

      while (mp[key]! > 0) {
        mp[key] = mp[key]! - 1;
        for (var i = 1; i < groupSize; i++) {
          if (!mp.containsKey(key + i)) return false;

          mp[key + i] = mp[key + i]! - 1;

          if (mp[key + i]! < 0) return false;
        }
      }
    }
    
    return true;
  }
}

// rearrange cards into groups
// group has groupSize and has consecutive cards

// 1 - 1 2 - 2 3 - 2 4 - 1 6 7 8

// 0 - 2, 1 - 1, 3 - 1, 4 - 1, 5 - 1, 6 - 1, 8 - 1, 9 - 1
