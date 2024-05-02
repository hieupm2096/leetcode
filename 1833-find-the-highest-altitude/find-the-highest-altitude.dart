class Solution {
  int largestAltitude(List<int> gain) {
    var highest = 0;
    var curr = 0;
    for (var i = 0; i < gain.length; i++) {
        curr += gain[i];
        if (highest < curr) highest = curr;
    }

    return highest;
  }
}