class Acronym {
  String abbreviate(String phrase) {
    if (phrase == null || phrase.isEmpty) {
      return '';
    }

    // Remove all punctuation except hyphens and underscores, and split the phrase into words.
    List<String> words = phrase.replaceAll(RegExp(r"[^A-Za-z0-9-']+"), ' ').split(RegExp(r'[\s\-_]+'));

    // Take the first letter of each word and convert to uppercase to form the acronym.
    String acronym = words.map((word) => word.substring(0, 1).toUpperCase()).join();

    return acronym;
  }
}

void main() {
  final acronym = Acronym();
  final result = acronym.abbreviate("Halley's Comet");
  print(result); // Output: "HC"
}
