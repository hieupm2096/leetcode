class Solution {
  bool threeConsecutiveOdds(List<int> arr) {
    final n = arr.length;
    var i = 0;
    while (i < n) {
      var count = 0;
      while (i < n && arr[i] % 2 == 1) {
        count++;

        if (count == 3) return true;

        i++;
      }
      i++;
    }
    return false;
  }
}