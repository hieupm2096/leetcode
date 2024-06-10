class Solution {
  int heightChecker(List<int> heights) {
    final expected = <int>[];
    expected.addAll(heights);
    expected.sort();

    var res = 0;

    for (var i = 0; i < heights.length; i++) {
      if (expected[i] != heights[i]) res++;
    }

    return res;
  }
}

// non decreasing order
// expected is the well-sorted array
// heights is the current array
// return number of indices where heights[i] != expected[i]