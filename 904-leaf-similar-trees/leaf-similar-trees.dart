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
  bool leafSimilar(TreeNode? root1, TreeNode? root2) {
    final leaves1 = <int>[];
    final leaves2 = <int>[];

    buildLeaves(root1, leaves1);
    buildLeaves(root2, leaves2);

    if (leaves1.length != leaves2.length) return false;

    for (var i = 0; i < leaves1.length; i++) {
      if (leaves1[i] != leaves2[i]) return false;
    }

    return true;
  }

  void buildLeaves(TreeNode? root, List<int> leaves) {
    if (root == null) return;
    if (root.left == null && root.right == null) {
      leaves.add(root.val);
      return;
    }

    buildLeaves(root.left, leaves);
    buildLeaves(root.right, leaves);
  }
}