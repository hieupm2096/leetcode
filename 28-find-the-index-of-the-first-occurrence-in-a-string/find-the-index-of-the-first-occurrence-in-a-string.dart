class Solution {
  int strStr(String haystack, String needle) {
    // var l = 0, r = 0, j = 0, count = 0;

    // while (r < haystack.length) {
    //   if (haystack[r] == needle[j]) {
    //     if (j == 0) l = r;

    //     count++;

    //     if (count == needle.length) return l;

    //     j++;
    //   } else {
    //     // reset j and count
    //     j = 0;
    //     count = 0;
    //   }

    //   r++;
    // }
    if (haystack.length < needle.length) return -1;

    for (var i = 0; i < haystack.length; i++) {
      if (haystack[i] == needle[0]) {
        var found = true;

        for (var j = 1; j < needle.length; j++) {
          var k = i + j;

          if (k > haystack.length - 1 || haystack[k] != needle[j]) {
            found = false;
            break;
          }
        }

        if (found) return i;
      }
    }

    return -1;
  }
}