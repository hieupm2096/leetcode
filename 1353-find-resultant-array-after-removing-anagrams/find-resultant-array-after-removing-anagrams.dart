class Solution {
  List<String> removeAnagrams(List<String> words) {
    if (words.isEmpty || words.length == 1) return words;

    final result = List<String>.from(words);

    for (var i = 1; i < words.length; i++) {
        if (isAnagram(words[i - 1], words[i])) {
            result.remove(words[i]);
        }
    }

    return result;
  }

  bool isAnagram(String str1, String str2) {
    if (str1.length != str2.length) return false;

    final c1 = <String, int>{};
    final c2 = <String, int>{};
    
    for (var i = 0; i < str1.length; i++) {
        c1[str1[i]] = (c1[str1[i]] ?? 0) + 1;
        c2[str2[i]] = (c2[str2[i]] ?? 0) + 1;
    }

    for (final key in c1.keys) {
        if (c1[key] != c2[key]) return false;
    }

    return true;
  }
}