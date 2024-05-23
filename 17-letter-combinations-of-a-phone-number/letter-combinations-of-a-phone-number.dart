class Solution {
  List<String> letterCombinations(String digits) {
    if (digits.isEmpty) return [];

    final mp = {
      '2': ['a', 'b', 'c'],
      '3': ['d', 'e', 'f'],
      '4': ['g', 'h', 'i'],
      '5': ['j', 'k', 'l'],
      '6': ['m', 'n', 'o'],
      '7': ['p', 'q', 'r', 's'],
      '8': ['t', 'u', 'v'],
      '9': ['w', 'x', 'y', 'z'],
    };

    final res = <String>[];

    void dfs(int index, String s) {
      if (index >= digits.length) {
        res.add(s);
        return;
      }

      final letters = mp[digits[index]] ?? [];

      for (var i = 0; i < letters.length; i++) {
        dfs(index + 1, s + letters[i]);
      }
    }

    dfs(0, '');

    return res;
  }
}