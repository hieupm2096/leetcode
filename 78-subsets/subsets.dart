class Solution {
  List<List<int>> subsets(List<int> nums) {
    final res = <List<int>>[];

    void dfs(List<int> soFar, List<int> rest) {
      if (rest.isEmpty) {
        res.add(soFar);
        return;
      };

      dfs([...soFar, rest.first], rest.sublist(1));
      dfs([...soFar], rest.sublist(1));
    }

    dfs([], nums);

    return res;
  }

  
}