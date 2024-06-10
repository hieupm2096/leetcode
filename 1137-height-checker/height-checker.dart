class Solution {
  int heightChecker(List<int> heights) {
    final copied = List<int>.from(heights);

    heights.sort();

    var res = 0;

    for (var i = 0; i < heights.length; i++) {
      if (copied[i] != heights[i]) res++;
    }

    return res;
  }
}

// non decreasing order
// expected is the well-sorted array
// heights is the current array
// return number of indices where heights[i] != expected[i]