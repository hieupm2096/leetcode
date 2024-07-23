import 'dart:collection';

class Solution {
  List<int> frequencySort(List<int> nums) {
    /* Using 2 maps
    final nf = HashMap<int, int>();
    final fn = HashMap<int, HashSet<int>>();

    for (final e in nums) {
      final oldFreq = nf[e] ?? 0;
      final freq = (nf[e] ?? 0) + 1;
      nf[e] = freq;

      if (!fn.containsKey(freq)) {
        fn[freq] = HashSet<int>();
      }

      fn[freq]!.add(e);

      if (fn.containsKey(oldFreq)) {
        fn[oldFreq]!.remove(e);
        if (fn[oldFreq]!.length == 0) {
          fn.remove(oldFreq);
        }
      }
    }
    
    final res = <int>[];

    final keys = fn.keys.toList()..sort();

    for (final key in keys) {
      final values = fn[key]!.toList()..sort((a, b) => b.compareTo(a));

      for (final val in values) {
        res.addAll(List<int>.filled(key, val));
      }
    }

    return res;
    */

    final freq = HashMap<int, int>();

    for (final e in nums) {
      freq[e] = (freq[e] ?? 0) + 1;
    }

    nums.sort((a, b) {
      final res = freq[a]!.compareTo(freq[b]!);

      if (res == 0) {
        return b.compareTo(a);
      }

      return res;
    });

    return nums;
  }
}