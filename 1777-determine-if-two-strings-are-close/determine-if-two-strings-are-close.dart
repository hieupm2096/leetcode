class Solution {
  bool closeStrings(String word1, String word2) {
    if (word1.length != word2.length) return false;

    final map1 = <String, int>{};
    final map2 = <String, int>{};

    for (var i = 0; i < word1.length; i++) {
        map1[word1[i]] = (map1[word1[i]] ?? 0) + 1;
        map2[word2[i]] = (map2[word2[i]] ?? 0) + 1;
    }

    if (map1.keys.length != map2.keys.length) return false;

    final set1 = map1.keys.toSet();
    final set2 = map2.keys.toSet();

    if (set1.difference(set2).length != 0 || set2.difference(set1).length != 0) return false;

    final freq1 = map1.values.toList()..sort();
    final freq2 = map2.values.toList()..sort();

    for (var i = 0; i < freq1.length; i++) {
        if (freq1[i] != freq2[i]) return false;
    }

    return true;
  }
}