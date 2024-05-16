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
  TreeNode? deleteNode(TreeNode? root, int key) {
    if (root == null) return root;

    if (root.val > key) {
      root.left = deleteNode(root.left, key);
    } else if (root.val < key) {
      root.right = deleteNode(root.right, key);
    } else {
      // leaft case or only 1 child case
      if (root.left == null) return root.right;
      if (root.right == null) return root.left;

      // both child exist
      TreeNode tmp = root.right!;

      // find the left most child of right
      while (tmp.left != null) {
        tmp = tmp.left!;
      }

      // overwrite current node with the value of left most child of right child
      root.val = tmp.val;

      // delete the left most child in the right side
      root.right = deleteNode(root.right, tmp.val);
    }

    return root;
  }
}