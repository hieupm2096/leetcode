class Solution {
  bool isNStraightHand(List<int> hand, int groupSize) {
    if (hand.length % groupSize != 0) return false;

    final cardCount = <int, int>{};

    hand.sort();

    for (final card in hand) {
      cardCount[card] = (cardCount[card] ?? 0) + 1;
    }

    for (final key in cardCount.keys) {
      if ((cardCount[key] ?? 0) == 0) continue;

      while (cardCount[key]! > 0) {
        for (var i = 0; i < groupSize; i++) {
          if ((cardCount[key + i] ?? 0) <= 0) return false;

          cardCount[key + i] = cardCount[key + i]! - 1;
        }
      }
    }

    return true;
  }
}

