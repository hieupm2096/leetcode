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
  int maxLevelSum(TreeNode? root) {
    final q = Queue<TreeNode>();

    q.add(root!);

    var level = 0;
    var max = [-9999999, 0];

    while (q.isNotEmpty) {
      level++;

      var i = q.length;

      var sum = 0;

      while (i > 0) {
        i--;

        final node = q.removeFirst();

        sum += node.val;

        if (node.left != null) {
          q.addLast(node.left!);
        }

        if (node.right != null) {
          q.addLast(node.right!);
        }
      }

      if (sum > max[0]) {
        max[0] = sum;
        max[1] = level;
      }
    }

    return max[1];
  }
}