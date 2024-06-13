class Solution {
  int heightChecker(List<int> heights) {
    void bubbleSort(List<int> arr) {
      var hasSwapped = true;

      while (hasSwapped) {
        hasSwapped = false;

        for (var i = 0; i < arr.length - 1; i++) {
          if (arr[i] > arr[i + 1]) {
            final temp = arr[i];
            arr[i] = arr[i + 1];
            arr[i + 1] = temp;

            hasSwapped = true;
          }
        }
      }
    }

    final expected = List<int>.from(heights);

    bubbleSort(expected);

    var ans = 0;

    for (var i = 0; i < heights.length; i++) {
      if (heights[i] != expected[i]) ans++;
    }

    return ans;
  }
}
