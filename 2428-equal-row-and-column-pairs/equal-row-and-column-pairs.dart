class Solution {
  int equalPairs(List<List<int>> grid) {
    var count = 0;
    if (grid.length == 1) return 1;

    final n = grid.length;

    final rows = <String>[];
    final columns = <String>[];

    for (var i = 0; i < n; i++) {
        var row = '';
        var column = '';
        for (var j = 0; j < n; j++) {
            row += '${grid[i][j]}\$';
            column += '${grid[j][i]}\$';
        }
        rows.add(row);
        columns.add(column);
    }

    for (var i = 0; i < n; i++) {
        for (var j = 0; j < n; j++) {
            if (rows[i] == columns[j]) count++;
        }
    }

    return count;
  }
}