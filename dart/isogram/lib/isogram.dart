class Isogram {
  bool isIsogram(String word) {
    // Convert the word to lowercase to make the comparison case-insensitive.
    String lowercaseWord = word.toLowerCase();

    // Create a set to keep track of seen letters.
    Set<String> seenLetters = {};

    // Iterate through each character in the word.
    for (var character in lowercaseWord.runes) {
      // Skip spaces and hyphens.
      if (character == ' '.codeUnitAt(0) || character == '-'.codeUnitAt(0)) {
        continue;
      }

      // If the character is already in the set, it's a repeat, so the word is not an isogram.
      if (seenLetters.contains(String.fromCharCode(character))) {
        return false;
      }

      // Otherwise, add the character to the set.
      seenLetters.add(String.fromCharCode(character));
    }

    // If we reached this point, no repeating letters (excluding spaces and hyphens) were found,
    // so the word is an isogram.
    return true;
  }
}

void main() {
  final isogram = Isogram();
  final result = isogram.isIsogram('Emily Jung Schwartzkopf');
  print(result); // Output: true
}
