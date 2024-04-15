class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    if (strs.isEmpty) return [];

    final result = <String, List<String>>{};

    for (var i = 0; i < strs.length; i++) {
        final s = (strs[i].split('')..sort()).join();

        if (!result.containsKey(s)) {
            result[s] = [];
        }

        result[s]!.add(strs[i]);
    }

    return result.values.toList();
  }
}