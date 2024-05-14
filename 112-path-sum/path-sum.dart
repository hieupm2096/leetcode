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
  bool hasPathSum(TreeNode? root, int targetSum) {
    if (root == null) return false;

    return _dfs(root, 0, targetSum);
  }

  bool _dfs(TreeNode? node, int currentSum, int targetSum) {
    if (node == null) return false;

    final newSum = currentSum + node.val;

    if (node.left == null && node.right == null) return newSum == targetSum;

    return _dfs(node.left, newSum, targetSum) ||  _dfs(node.right, newSum, targetSum);
  }
}