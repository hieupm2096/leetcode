class Solution {
  bool isNStraightHand(List<int> hand, int groupSize) {
    if (hand.length % groupSize != 0) return false;

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
          if ((mp[key + i] ?? 0) == 0) return false;

          mp[key + i] = mp[key + i]! - 1;
        }
      }
    }
    
    return true;
  }
}

