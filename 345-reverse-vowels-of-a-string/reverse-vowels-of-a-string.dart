class Solution {
  String reverseVowels(String s) {
    var l = 0, r = s.length - 1;
    final lq = <int, String>{}, rq = <int, String>{};

    final arr = s.split('');

    while (l < r) {
        if (arr[l].isVowel()) {
        lq[l] = arr[l];
        }

        if (arr[r].isVowel()) {
        rq[r] = arr[r];
        }

        if (lq.isNotEmpty && rq.isNotEmpty) {
        final lIndex = lq.keys.first;
        final rIndex = rq.keys.first;

        arr[lIndex] = rq[rIndex]!;
        arr[rIndex] = lq[lIndex]!;

        lq.remove(lIndex);
        rq.remove(rIndex);

        l++;
        r--;
        } else if (lq.isEmpty) {
        l++;
        } else if (rq.isEmpty) {
        r--;
        }
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