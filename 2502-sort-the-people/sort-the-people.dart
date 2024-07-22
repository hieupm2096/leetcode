class Solution {
  List<String> sortPeople(List<String> names, List<int> heights) {
    final sortedIndices = List<int>.generate(heights.length, (i) => i);

    sortedIndices.sort((a, b) => heights[b].compareTo(heights[a]));

    return sortedIndices.map((e) => names[e]).toList();
  }
}