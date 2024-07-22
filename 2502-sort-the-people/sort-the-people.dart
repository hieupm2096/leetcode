import 'dart:collection' show HashMap;

class Solution {
  List<String> sortPeople(List<String> names, List<int> heights) {
    final mp = HashMap<int, String>();
    
    for (var i = 0; i < heights.length; i++) {
      mp[heights[i]] = names[i];
    }

    heights.sort((a, b) => b.compareTo(a));

    return heights.map((e) => mp[e]!).toList();
  }
}