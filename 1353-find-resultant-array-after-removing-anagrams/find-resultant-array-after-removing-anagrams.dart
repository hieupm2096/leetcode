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

    final arr1 = List<int>.filled(26, 0);
    final arr2 = List<int>.filled(26, 0);

    for (var i = 0; i < str1.length; i++) {
        arr1[str1[i].codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
        arr2[str2[i].codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
    }

    for (var i = 0; i < 26; i++) {
        if (arr1[i] != arr2[i]) return false;
    }

    return true;
  }
}