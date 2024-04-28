class Solution {
  bool canPlaceFlowers(List<int> flowerbed, int n) {
    var count = n;

    // for the edge case: [0, 0, 1], [1, 0, 0]
    final newFlowerbed = [0, ...flowerbed, 0];

    var zeroCount = 0; 

    for (final e in newFlowerbed) {
        if (e == 1) {
            zeroCount = 0;
        } else {
            zeroCount++;

            if (zeroCount == 3) {
                count--;
                zeroCount = 1;
            }
        }
    }

    return count <= 0;
  }
}