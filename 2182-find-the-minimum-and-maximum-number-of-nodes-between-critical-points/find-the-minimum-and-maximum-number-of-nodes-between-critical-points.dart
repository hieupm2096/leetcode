/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */

import 'dart:math' show min;

class Solution {
  List<int> nodesBetweenCriticalPoints(ListNode? head) {
    int minDistance = 1000000;

    final cps = <int>[];

    var index = 1;

    while (head != null && head.next != null && head.next?.next != null) {
      final prevVal = head.val;
      final currVal = head.next!.val;
      final nextVal = head.next!.next!.val;

      if (currVal > prevVal && currVal > nextVal || currVal < prevVal && currVal < nextVal) {
        cps.add(index);
      }

      index++;
      head = head.next;
    }

    if (cps.length <= 1) return [-1, -1];

    for (var i = 0; i < cps.length - 1; i++) {
      minDistance = min(minDistance, cps[i + 1] - cps[i]);
    }

    return [minDistance, cps.last - cps.first];
  }
}