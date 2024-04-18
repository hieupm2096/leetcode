class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    if (nums.isEmpty) return [];

    final freq = <int, int>{};

    final result = <int>[];

    for (final e in nums) {
        freq[e] = (freq[e] ?? 0) + 1;
    }

    final bucket = List.generate(nums.length + 1, (_) => <int>[]);

    for (final key in freq.keys) {
        bucket[freq[key]!].add(key);
    }

    var count = bucket.length - 1;

    while (count > 0 && result.length < k) {
        if (bucket[count].isNotEmpty) {
            if (bucket[count].length <= k) {
                result.addAll(bucket[count]);
            } else {
                result.addAll(bucket[count].sublist(0, k));
            }
        }

        count--;
    }

    return result;
  }
}