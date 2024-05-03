class Solution {
  int equalPairs(List<List<int>> grid) {
    var count = 0;
    if (grid.length == 1) return 1;

    final n = grid.length;

    // init column array
    final columns = List<List<int>>.generate(n, (_) => List.filled(n, 0));

    // fill value for column array
    for (var i = 0; i < n; i++) {
        for (var j = 0; j < n; j++) {
            columns[j][i] = grid[i][j];
        }
    }

    for (var i = 0; i < n; i++) {
        for (var j = 0; j < n; j++) {
            var isValid = true;
            for (var k = 0; k < n; k++) {
                if (grid[i][k] != columns[j][k]) {
                    isValid = false;
                }
            }

            if (isValid) count++;
        }
    }

    return count;
  }
}