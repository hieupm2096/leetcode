class Solution {
  int minReorder(int n, List<List<int>> connections) {
    // start at city 0
    // recursively check its neighbor
    // count outgoing edges

    // we need tuple because [1, 2] != [1,2] while (1, 2) == (1, 2)
    final tupleConnections = connections.map((e) => (e[0], e[1])).toList();

    // edge already exists in edges means we don't need any modification
    final edges = tupleConnections.toSet();

    final neighbors = { for (var i = 0; i < n; i++) i: <int>[] };

    for (final e in tupleConnections) {
      neighbors[e.$1]!.add(e.$2);
      neighbors[e.$2]!.add(e.$1);
    }

    final visited = <int>{0};

    final stack = <int>[0];

    var res = 0;

    while (stack.isNotEmpty) {
      final city = stack.removeLast();

      for (final neighbor in neighbors[city]!) {
        if (visited.contains(neighbor)) continue;

        if (!edges.contains((neighbor, city))) {
          res++;
        }

        visited.add(neighbor);

        stack.add(neighbor);
      }
    }

    return res;
  }
}