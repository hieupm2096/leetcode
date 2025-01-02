const vowels = {'a', 'e', 'i', 'o', 'u'};

class Solution {

  bool isValidString(String s) {
    return vowels.contains(s[0]) && vowels.contains(s[s.length - 1]);
  }

  List<int> vowelStrings(List<String> words, List<List<int>> queries) {
    if (words.length == 0) return [];
    if (queries.length == 0) return [];

    final prefixes = List.filled(words.length, 0);

    if (isValidString(words[0])) {
        prefixes[0] = 1;
    }

    for (var i = 1; i < words.length; i++) {
        final word = words[i];

        final addition = isValidString(word) ? 1 : 0;

        prefixes[i] = prefixes[i - 1] + addition;
    }

    print('prefixes: $prefixes');

    final ans = List.filled(queries.length, 0);

    for (var i = 0; i < queries.length; i++) {
        final query = queries[i];

        final l = query[0];
        final r = query[1];

        ans[i] = prefixes[r] - (l == 0 ? 0 : prefixes[l - 1]);
    }

    return ans;
  }
}