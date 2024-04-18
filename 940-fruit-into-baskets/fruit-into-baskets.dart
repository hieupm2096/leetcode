class Solution {
  int totalFruit(List<int> fruits) {
    if (fruits.length < 3) return fruits.length;

    var l = 0, r = 0, max = 0, sum = 0, counter = 0;

    final freq = <int, int>{};

    while (r < fruits.length) {
        final f = fruits[r];

        if ((freq[f] ?? 0) == 0) counter++;

        freq[f] = (freq[f] ?? 0) + 1;
        sum++;

        while (counter > 2) {
            final f1 = fruits[l];

            freq[f1] = freq[f1]! - 1;
            sum--;

            if (freq[f1]! == 0) counter--;

            l++;
        }

        if (sum > max) max = sum;

        r++;
    }

    return max;
  }
}