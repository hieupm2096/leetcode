/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  final List<List<int>> _result = [];

  List<List<int>> pathSum(TreeNode? root, int targetSum) {
    _dfs(root, targetSum, 0, []);

    return _result;
  }

  void _dfs(TreeNode? node, int targetSum, int currentSum, List<int> arr) {
    if (node == null) return;

    currentSum += node.val;
    arr.add(node.val);

    if (node.left == null && node.right == null && currentSum == targetSum) {
      _result.add(arr);
      return;
    }

    final leftArr = [...arr];
    final rightArr = [...arr];

    _dfs(node.left, targetSum, currentSum, leftArr);
    _dfs(node.right, targetSum, currentSum, rightArr);
  }
}