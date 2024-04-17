class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    if (strs.isEmpty) return [];
    if (strs.length == 1) return [strs];

    final result = <String, List<String>>{};

    for (final s in strs) {
        final arr = List<int>.filled(26, 0);

        for (var i = 0; i < s.length; i++) {
            final c = s[i];
            arr[c.codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
        }

        final k = arr.join('#');

        if (result.containsKey(k)) {
            result[k]!.add(s);
        } else {
            result[k] = [s];
        }
    }

    return result.values.toList();
  }
}