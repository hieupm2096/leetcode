class Solution {
  String reverseVowels(String s) {
    var l = 0, r = s.length - 1;
    final lq = <int, String>{}, rq = <int, String>{};

    final arr = s.split('');

    while (l < r) {
        while (l < r && !arr[l].isVowel()) {
            l++;
        }

        while (l < r && !arr[r].isVowel()) {
            r--;
        }

        final t = arr[l];
        arr[l] = arr[r];
        arr[r] = t;

        l++;
        r--;
    }

    return arr.join('');
  }
}

extension StringExt on String {
    bool isVowel() {
        return this == 'a' || this == 'e' || this == 'i' || this == 'o' || this == 'u'
         || this == 'A' || this == 'E' || this == 'I' || this == 'O' || this == 'U';
    }
}