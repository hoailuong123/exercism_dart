class Pangram {
  bool isPangram(String input) {
    // Convert the input string to lowercase to handle both uppercase and lowercase letters
    input = input.toLowerCase();

    // Create a set to store all unique letters in the input string
    Set<String> uniqueLetters = {};

    // Iterate through each character in the input string
    for (int i = 0; i < input.length; i++) {
      String char = input[i];

      // If the character is an alphabet letter (a-z), add it to the set
      int charCode = char.codeUnitAt(0);
      if (charCode >= 'a'.codeUnitAt(0) && charCode <= 'z'.codeUnitAt(0)) {
        uniqueLetters.add(char);
      }
    }

    // A pangram contains all 26 letters of the alphabet
    return uniqueLetters.length == 26;
  }
}

void main() {
  final pangram = Pangram();
  final result = pangram.isPangram('');
  print(result); // Output: false
}
