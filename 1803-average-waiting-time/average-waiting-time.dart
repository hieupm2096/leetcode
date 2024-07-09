// customers: [arrival, time]
import 'dart:math' show max;

class Solution {
  double averageWaitingTime(List<List<int>> customers) {
    var currentTime = 0;
    var waitingTime = 0;

    for (var i = 0; i < customers.length; i++) {
      final c = customers[i];

      currentTime = max(c[0], currentTime);
      currentTime += c[1];
      waitingTime += currentTime - c[0];
    }

    return waitingTime / customers.length;
  }
}