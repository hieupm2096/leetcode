class Solution {
  List<int> decrypt(List<int> code, int k) {
    final result = List.filled(code.length, 0);

    if (k == 0) return result;

    for (var i = 0; i < code.length; i++) {
        for (var j = k; j != 0; j += k > 0 ? -1 : 1) {
            var index = (i + j + code.length) % code.length;
            result[i] += code[index];
        }
    }

    return result;
  }
}