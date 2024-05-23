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

    final arr = digits.split('').map((e) => mp[e]!).toList();

    final res = <String>[];

    void dfs(String s, List<List<String>> arr) {
      if (s.length == arr.length) {
        res.add(s);
        return;
      }

      final letters = arr[s.length];

      for (var i = 0; i < letters.length; i++) {
        s += letters[i];
        dfs(s, arr);
        s = s.substring(0, s.length - 1);
      }
    }

    dfs('', arr);

    return res;
  }
}