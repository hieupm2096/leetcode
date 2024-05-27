class Solution {
  List<int> successfulPairs(List<int> spells, List<int> potions, int success) {
    final res = <int>[];

    potions.sort();

    final n = potions.length;

    for (final spell in spells) {
      res.add(findIndex(spell, potions, success));
    }

    return res;
  }

  int findIndex(int spell, List<int> potions, int success) {
      var low = 0, high = potions.length - 1, mid = 0;

      while (low <= high) {
        mid = low + (high - low) ~/ 2;
        if (spell * potions[mid] >= success) {
          high = mid - 1;
        } else {
          low = mid + 1;
        }
      }

      return potions.length - low;
    }
}