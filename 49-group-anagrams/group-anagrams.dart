class Solution {
  List<List<String>> groupAnagrams(List<String> strs) {
    if (strs.isEmpty) return [];

    final result = <String, List<String>>{};

    for (final str in strs) {
        final arr = List<int>.filled(26, 0);

        for (var i = 0; i < str.length; i++) {
            arr[str[i].codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
        }

        final t = arr.join('#');

        if (result.containsKey(t)) {
            result[t]!.add(str);
        } else {
            result[t] = [str];
        }
    }

    return result.values.toList();
  }
}