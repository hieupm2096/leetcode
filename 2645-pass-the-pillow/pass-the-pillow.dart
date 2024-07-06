/*
n ppl -> 1 - n
1 2 3 ... n
n n-1 n-2 ... 1
1 2 3 ... time up
*/

class Solution {
  int passThePillow(int n, int time) {
    var ans = 1;
    var reachedN = false;
    while (time > 0) {
      if (ans == n) {
        reachedN = true;
      } else if (ans == 1) {
        reachedN = false;
      }

      if (!reachedN) {
        ans++;
      } else {
        ans--;
      }

      time--;
    }

    return ans;
  }
}