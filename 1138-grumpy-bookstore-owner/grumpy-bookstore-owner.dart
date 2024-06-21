/*
n minutes
n customers -> number of customer that enters the store at the start of the i minute
eg: customers[3] = 2 which means 2 customers at 3 minutes

grumpy -> binary array show that owner grumpy or not
eg: grumpy[3] = 1 which means at minute 3 he is grumpy
*/

import 'dart:math' show max;

class Solution {
  int maxSatisfied(List<int> customers, List<int> grumpy, int minutes) {
    var maxC = 0, sumC = 0, l = 0, r = 0, startMinutes = 0;

    final n = customers.length;

    while (r < n) {
      while (r < minutes) {
        sumC += grumpy[r] == 0 ? 0 : customers[r];
        maxC = max(maxC, sumC);
        r++;
      }

      if (r >= n) break;

      sumC += grumpy[r] == 0 ? 0 : customers[r];
      sumC -= grumpy[l] == 0 ? 0 : customers[l];
      
      if (sumC > maxC) {
        maxC = sumC;
        startMinutes = l + 1;
      }

      l++;
      r++;
    }

    var ans = maxC;

    for (var i = 0; i < n; i++) {
      if (i >= startMinutes && i <= startMinutes + minutes - 1 && grumpy[i] == 1) continue;

      ans += grumpy[i] == 0 ? customers[i] : 0;
    }

    return ans;
  }
}