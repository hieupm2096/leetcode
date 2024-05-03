class Solution {
  String removeStars(String s) {
    final stack = Stack<String>();

    for (var i = 0; i < s.length; i++) {
        final c = s[i];

        if (c == '*') {
            stack.pop();
        } else {
            stack.push(c);
        }
    }

    return stack.list.join('');
  }
}

class Stack<E> {
    final _list = <E>[];

    void push(E value) => _list.add(value);

    E pop() => _list.removeLast();

    List<E> get list => _list;
}