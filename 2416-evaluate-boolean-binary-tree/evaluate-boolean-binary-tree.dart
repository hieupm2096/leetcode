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
  bool evaluateTree(TreeNode? root) {
    if (root == null) return false;

    if (root.left == null && root.right == null) return root.val == 1;

    if (root.val == 2) {
      return evaluateTree(root.left) || evaluateTree(root.right);
    }

    return evaluateTree(root.left) && evaluateTree(root.right);
  }
}