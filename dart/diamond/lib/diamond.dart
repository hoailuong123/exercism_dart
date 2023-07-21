class Diamond {
  List<String> rows(String letter) {
    final int diamondSize = letter.codeUnitAt(0) - 'A'.codeUnitAt(0) + 1;
    List<String> diamondRows = [];

    for (int i = 0; i < diamondSize; i++) {
      int spacesBefore = diamondSize - i - 1;
      int spacesBetween = i * 2 - 1;

      String row = ' ' * spacesBefore + String.fromCharCode('A'.codeUnitAt(0) + i);
      if (spacesBetween > 0) {
        row += ' ' * spacesBetween + String.fromCharCode('A'.codeUnitAt(0) + i);
      }

      String formattedRow = row.padLeft(diamondSize + i).padRight(diamondSize * 2 - 1);
      formattedRow = "'" + formattedRow + "'";
      diamondRows.add(formattedRow);
    }

    for (int i = diamondSize - 2; i >= 0; i--) {
      int spacesBefore = diamondSize - i - 1;
      int spacesBetween = i * 2 - 1;

      String row = ' ' * spacesBefore + String.fromCharCode('A'.codeUnitAt(0) + i);
      if (spacesBetween > 0) {
        row += ' ' * spacesBetween + String.fromCharCode('A'.codeUnitAt(0) + i);
      }

      String formattedRow = row.padLeft(diamondSize + i).padRight(diamondSize * 2 - 1);
      formattedRow = "'" + formattedRow + "'";
      diamondRows.add(formattedRow);
    }

    return diamondRows;
  }
}

void main() {
  final diamond = Diamond();
  final result = diamond.rows('Z');
  for (String row in result) {
    print(row);
  }
}
