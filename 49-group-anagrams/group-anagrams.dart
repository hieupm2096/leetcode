class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    if (strs.isEmpty) return [];

    final result = <String, List<String>>{};

    for (final str in strs) {
        final arr = List<int>.filled(26, 0);

        for (var i = 0; i < str.length; i++) {
            arr[str[i].codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
        }

        final s = arr.join('#');

        if (!result.containsKey(s)) {
            result[s] = [];
        }

        result[s]!.add(str);
    }

    return result.values.toList();
  }
}