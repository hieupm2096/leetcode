/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
import 'dart:collection' show HashMap, HashSet;

class Solution {
  TreeNode? createBinaryTree(List<List<int>> descriptions) {
    final nodeMap = HashMap<int, TreeNode>();

    // to find the head node
    final children = HashSet<int>();
    final parents = HashSet<int>();

    for (final arr in descriptions) {
      final parent = arr[0];
      final child = arr[1];
      final isLeft = arr[2] == 1;

      children.add(child);
      parents.add(parent);

      if (!nodeMap.containsKey(child)) {
        nodeMap[child] = TreeNode(child, null, null);
      }

      final childNode = nodeMap[child];
      
      final parentNode = nodeMap[parent] ?? TreeNode(parent, null, null);
      
      if (isLeft) {
        parentNode.left = nodeMap[child];
      } else {
        parentNode.right = nodeMap[child];
      }
      
      nodeMap[parent] = parentNode;
    }

    final headVal = parents.difference(children).first;

    final head = nodeMap[headVal];

    return head;
  }
}
