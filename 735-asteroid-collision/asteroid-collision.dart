class Solution {
  List<int> asteroidCollision(List<int> asteroids) {
    final result = Stack<int>();

    for (final asteroid in asteroids) {
      if (result.isEmpty) {
        result.push(asteroid);
        continue;
      }

      int top = result.peek();
      result.push(asteroid);

      if (checkCollide(top, asteroid)) {
        destroyAsteroid(result);
      }
    }

    return result.list;
  }

  bool checkCollide(int a, int b) => a > 0 && b < 0;

  void destroyAsteroid(Stack<int> stack) {
    while (stack.length > 1) {
      int last = stack.pop();
      int secondLast = stack.pop();

      if (!checkCollide(secondLast, last)) {
        stack.push(secondLast);
        stack.push(last);

        break;
      }

      if (last.abs() > secondLast.abs()) {
        stack.push(last);
      } else if (last.abs() < secondLast.abs()) {
        stack.push(secondLast);
      }
    }
  }
}

class Stack<E> {
    final _list = <E>[];

    void push(E value) => _list.add(value);

    E pop() => _list.removeLast();

    E peek() => _list.last;

    List<E> get list => _list;

    bool get isEmpty => _list.isEmpty;

    int get length => _list.length;
}