class HighScores {
  List<int> scores;

  HighScores(this.scores);

  int latest() {
    if (scores.isEmpty) {
      throw Exception('No scores available');
    }
    return scores.last;
  }

  int personalBest() {
    if (scores.isEmpty) {
      throw Exception('No scores available');
    }
    return scores.reduce((max, score) => score > max ? score : max);
  }

  List<int> personalTopThree() {
    if (scores.isEmpty) {
      throw Exception('No scores available');
    }
    final sortedScores = List<int>.from(scores)..sort((a, b) => b.compareTo(a));
    return sortedScores.take(3).toList();
  }
}

void main() {
  final scores = HighScores([70, 50, 20, 30]);
  print(scores.personalBest());
  print(scores.personalTopThree());
  print(scores.latest());
}
