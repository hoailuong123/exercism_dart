class PascalsTriangle {
  List<List<int>> rows(int numRows) {
    List<List<int>> triangle = [];

    for (int i = 0; i < numRows; i++) {
      List<int> row = [];

      for (int j = 0; j <= i; j++) {
        if (j == 0 || j == i) {
          row.add(1);
        } else {
          int left = triangle[i - 1][j - 1];
          int right = triangle[i - 1][j];
          row.add(left + right);
        }
      }

      triangle.add(row);
    }

    return triangle;
  }
}

void main() {
  final pascalsTriangle = PascalsTriangle();
  final result = pascalsTriangle.rows(5);
  
  // Printing the triangle
  result.forEach((row) {
    print(row);
  });
}
