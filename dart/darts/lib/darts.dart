class Darts {
  int score(double x, double y) {
    // Calculate the distance from the origin (0, 0)
    double distance = x * x + y * y;

    if (distance <= 1) {
      // Dart lands in the inner circle
      return 10;
    } else if (distance <= 25) {
      // Dart lands in the middle circle
      return 5;
    } else if (distance <= 100) {
      // Dart lands in the outer circle
      return 1;
    } else {
      // Dart lands outside the target
      return 0;
    }
  }
}

void main() {
  final darts = Darts();
  final result = darts.score(-9, 9);
  print(result); // Output: 10
}
