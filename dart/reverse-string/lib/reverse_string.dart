String reverse(String input) {
  // Split the input string into individual characters.
  List<String> characters = input.split('');

  // Reverse the order of characters using the `reversed` method.
  List<String> reversedCharacters = characters.reversed.toList();

  // Join the reversed characters back into a single string.
  String reversedString = reversedCharacters.join('');

  // Return the reversed string.
  return reversedString;
}
void main() {
  String original = "Ramen";
  String result = reverse(original);
  print(result); 
}
