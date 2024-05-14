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
    _dfs(root, targetSum);

    return _count;
  }

  int _count = 0;

  void _dfs(TreeNode? node, int targetSum) {
    if (node == null) return;

    _test(node, targetSum);

    _dfs(node.left, targetSum);
    _dfs(node.right, targetSum);
  }

  void _test(TreeNode? node, int targetSum) {
    if (node == null) return;

    if (node.val == targetSum) _count++;

    _test(node.left, targetSum - node.val);
    _test(node.right, targetSum - node.val);
  }
}