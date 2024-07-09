// customers: [arrival, time]
import 'dart:math' show max;

class Solution {
  double averageWaitingTime(List<List<int>> customers) {
    var currentTime = 0;
    var waitingTime = 0;

    for (var i = 0; i < customers.length; i++) {
      final c = customers[i];

      // if (i == 0) {
      //   currentTime += c[0] + c[1];
      //   waitingTime += c[1];
      //   print('current time: $currentTime');
      //   print('waiting time: $waitingTime');
      //   continue;
      // }

      currentTime = max(c[0], currentTime);
      currentTime += c[1];
      waitingTime += currentTime - c[0];

      print('current time: $currentTime');
      print('waiting time: $waitingTime');
    }

    return waitingTime / customers.length;
  }
}