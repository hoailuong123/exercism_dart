class Minesweeper {
  final List<String> _board;

  Minesweeper(this._board);

  int _getMineCount(int row, int col) {
    final int rows = _board.length;
    final int cols = _board[0].length;
    int count = 0;
    for (int dr = -1; dr <= 1; dr++) {
      for (int dc = -1; dc <= 1; dc++) {
        if (dr == 0 && dc == 0) continue; // Skip the current cell
        int r = row + dr;
        int c = col + dc;
        if (r >= 0 && r < rows && c >= 0 && c < cols) {
          if (_board[r][c] == '*') {
            count++;
          }
        }
      }
    }
    return count;
  }

  List<String> get annotated {
    final int rows = _board.length;
    final int cols = _board.isEmpty ? 0 : _board[0].length;

    List<String> updatedBoard = List.generate(rows, (index) => '');

    for (int r = 0; r < rows; r++) {
      for (int c = 0; c < cols; c++) {
        if (_board[r][c] == ' ') {
          int mineCount = _getMineCount(r, c);
          updatedBoard[r] += mineCount == 0 ? ' ' : mineCount.toString();
        } else {
          updatedBoard[r] += _board[r][c];
        }
      }
    }

    return updatedBoard;
  }
}

void main() {
  final result = Minesweeper([]).annotated;
  print(result); // Output: []
}
