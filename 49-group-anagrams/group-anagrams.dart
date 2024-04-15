class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    if (strs.isEmpty) return [];

    final result = <String, List<String>>{};

    for (final str in strs) {
        final s = (str.split('')..sort()).join();

        if (!result.containsKey(s)) {
            result[s] = [];
        }

        result[s]!.add(str);
    }

    return result.values.toList();
  }
}