class Solution {
  String replaceWords(List<String> dictionary, String sentence) {    
    final roots = dictionary.toSet();

    var res = '';
    
    final words = sentence.split(' ');

    for (final word in words) {
      var i = 1;

      while (i <= word.length) {
        final str = word.substring(0, i);

        if (roots.contains(str)) {
          res += str + ' ';
          break;
        }

        i++;
      }

      if (i == word.length + 1) {
        res += word + ' ';
      }
    }
    
    return res.trim();
  }
}

// c 1 a 1 t 1
// b 1 a 1 t 1