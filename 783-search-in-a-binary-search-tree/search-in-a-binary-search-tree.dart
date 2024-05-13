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
  TreeNode? searchBST(TreeNode? root, int val) {
    if (root == null) return null;

    if (root.val == val) return root;

    if (root.val > val) {
      return searchBST(root.left, val);
    }

    if (root.val < val) {
      return searchBST(root.right, val);
    }

    return null;
  }
}