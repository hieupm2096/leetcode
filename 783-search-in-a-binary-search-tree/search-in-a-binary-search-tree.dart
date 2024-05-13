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

    final leftNode = searchBST(root.left, val);

    if (leftNode != null) return leftNode;

    final rightNode = searchBST(root.right, val);

    if (rightNode != null) return rightNode;

    return null;
  }
}