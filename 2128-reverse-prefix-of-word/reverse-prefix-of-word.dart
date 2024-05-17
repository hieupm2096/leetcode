class Solution {
  String reversePrefix(String word, String ch) {
    if (word.length == 1) return word;

    final arr = word.split('');

    for (var i = 0; i < arr.length; i++) {
      if (arr[i] == ch) {
        var j = 0;

        while (j < i) {
          final t = arr[i];
          arr[i] = arr[j];
          arr[j] = t;
          i--;
          j++;
        }

        return arr.join();
      }
    }

    return word;
  }
}