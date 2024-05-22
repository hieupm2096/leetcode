class Solution {
  List<List<String>> partition(String s) {
    if (s.length == 1) return [[s]];

    final res = <List<String>>[];
    final n = s.length;

    void dfs(int index, List<String> partition) {
      if (index >= n) {
        res.add([...partition]);
      }

      for (var i = index; i < n; i++) {
        final sub = s.substring(index, i + 1);

        if (sub == sub.reversed) {
          partition.add(sub);

          dfs(i + 1, partition);

          partition.removeLast();
        }
      }
    }

    dfs(0, []);

    return res;
  }
}

extension on String {
  String get reversed => this.split('').reversed.join();
}