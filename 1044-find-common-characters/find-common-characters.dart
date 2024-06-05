import 'dart:math' show min;

class Solution {
  List<String> commonChars(List<String> words) {
    if (words.length == 1) return words.first.split('');

    var common = <String, int>{};

    final firstWord = words.first;

    for (var i = 0; i < firstWord.length; i++) {
      final c = firstWord[i];

      common[c] = (common[c] ?? 0) + 1;
    }
    
    for (var j = 1; j < words.length; j++) {
      final word = words[j];

      final current = <String, int>{};

      for (var i = 0; i < word.length; i++) {
        final c = word[i];

        current[c] = (current[c] ?? 0) + 1;
      }

      for (final key in common.keys) {
        if (!current.containsKey(key)) {
          common[key] = 0;
        } else {
          common[key] = min(current[key]!, common[key]!);
        }
      }

      common.removeWhere((k, v) => v == 0);
    }

    final res = <String>[];

    for (final k in common.keys) {
      for (var i = 0; i < common[k]!; i++) {
        res.add(k);
      }
    }

    return res;
  }
}