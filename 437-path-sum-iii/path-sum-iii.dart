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
  int pathSum(TreeNode? root, int targetSum) {
    if (root == null) return _count;

    _dfs(root, targetSum, 0);
    pathSum(root.left, targetSum);
    pathSum(root.right, targetSum);

    return _count;
  }

  int _count = 0;

  void _dfs(TreeNode? node, int targetSum, int currentSum) {
    if (node == null) return;

    currentSum += node.val;

    if (currentSum == targetSum) _count++;

    _dfs(node.left, targetSum, currentSum);
    _dfs(node.right, targetSum, currentSum);
  }
}