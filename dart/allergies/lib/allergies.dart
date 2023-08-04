class Allergies {
  static const allergies = const {
    "eggs": 1,
    "peanuts": 2,
    "shellfish": 4,
    "strawberries": 8,
    "tomatoes": 16,
    "chocolate": 32,
    "pollen": 64,
    "cats": 128
  };

  bool allergicTo(String aliment, int? score) =>
      score != null && score & allergies[aliment]! != 0;

  List<String> list(int? score) =>
      score == null? []: allergies.keys.where((aliment) => allergicTo(aliment, score)).toList();
}

void main() {
  final allergies = Allergies(); // Provide null if score is not available
  final result = allergies.allergicTo('eggs', null);
  print(result); // Output: false
}
