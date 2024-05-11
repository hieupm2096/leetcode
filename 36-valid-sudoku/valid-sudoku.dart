class Solution {
  bool isValidSudoku(List<List<String>> board) {
    final columns = List<Set<String>>.generate(9, (_) => {});
    final rows = List<Set<String>>.generate(9, (_) => {});
    final blocks = List<Set<String>>.generate(9, (_) => {});
    final ts = [0, 0, 0, 3, 3, 3, 6, 6, 6];

    for (var i = 0; i < 9; i++) {
      for (var j = 0; j < 9; j++) {
        final cell = board[i][j];

        if (cell == '.') continue;

        if (rows[i].contains(cell)) return false;
        rows[i].add(cell);

        if (columns[j].contains(cell))  return false;
        columns[j].add(cell);

        final blockNo = ts[i] + j ~/ 3;

        if (blocks[blockNo].contains(cell)) return false;
        blocks[blockNo].add(cell);
      }
    }

    return true;
  }
}