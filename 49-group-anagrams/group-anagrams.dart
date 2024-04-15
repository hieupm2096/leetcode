class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    if (strs.isEmpty) return [];

    final result = <String, List<String>>{};

    for (var i = 0; i < strs.length; i++) {
        final arr = strs[i].split('');
        arr.sort();
        final s = arr.join();

        if (result[s] == null) {
            result[s] = [strs[i]];
        } else {
            result[s]!.add(strs[i]);
        }
    }

    return result.values.toList();
  }
}