/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
import 'dart:collection';

class Solution {
  List<int> rightSideView(TreeNode? root) {
    if (root == null) return [];

    final result = <int>[];

    final q = Queue<TreeNode>();

    q.addLast(root);

    while (q.isNotEmpty) {
      var size = q.length;

      final tmp = Queue<TreeNode>();

      while (size > 0) {
        final node = q.removeFirst();

        size--;

        if (node.left != null) {
          tmp.add(node.left!);
        }

        if (node.right != null) {
          tmp.add(node.right!);
        }

        if (size == 0) {
          result.add(node.val);
        }
      }

      q.addAll(tmp);
    }

    return result;
  }
}