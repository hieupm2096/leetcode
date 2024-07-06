/*
n ppl -> 1 - n
1 2 3 ... n
n n-1 n-2 ... 1
1 2 3 ... time up
*/
import 'dart:math' show ceiling;

class Solution {
  int passThePillow(int n, int time) {
    // take n - 1 seconds to complete a cycle 
    final cycle = time ~/ (n - 1);

    final extraTime = time % (n - 1);

    if (cycle.isEven) {
      return 1 + extraTime;
    }
    return n - extraTime;
  }
}
