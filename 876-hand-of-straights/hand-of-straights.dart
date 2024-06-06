class Solution {
  bool isNStraightHand(List<int> hand, int groupSize) {
    if (hand.length % groupSize != 0) return false;

    final cardCount = <int, int>{};

    for (final card in hand) {
      cardCount[card] = (cardCount[card] ?? 0) + 1;
    }

    for (final card in hand) {
      var startCard = card;

      // find start card
      while (cardCount.containsKey(startCard - 1)) {
        startCard--;
      }

      // process sequence from start card
      while (startCard <= card) {
        while (cardCount[startCard]! > 0) {
          for (var nextCard = startCard; nextCard < startCard + groupSize; nextCard++) {
            if ((cardCount[nextCard] ?? 0) == 0) return false;

            cardCount[nextCard] = cardCount[nextCard]! - 1;
          }
        }

        startCard++;
      }
    }

    return true;
  }
}

