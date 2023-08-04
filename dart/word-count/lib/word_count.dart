class WordCount {
  Map<String, int> countWords(String phrase) {
    final words = phrase
        .split(RegExp(r"[^\w']+"))
        .where((word) => word.isNotEmpty)
        .map((word) => word.toLowerCase());

    final wordCount = <String, int>{};
    for (final word in words) {
      wordCount[word] = (wordCount[word] ?? 0) + 1;
    }

    return wordCount;
  }
}

void main() {
  final wordCount = WordCount();
  final result =
      wordCount.countWords('car: carpet as java: javascript!!&@\$%^&');
  print(result);
}
