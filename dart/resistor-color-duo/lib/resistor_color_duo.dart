class ResistorColorDuo {
  int value(List<String> colors) {
    // Define a map to associate each color with its numeric code.
    Map<String, int> colorCodes = {
      'black': 0, 'brown': 1, 'red': 2, 'orange': 3, 'yellow': 4,
      'green': 5, 'blue': 6, 'violet': 7, 'grey': 8, 'white': 9,
    };
    // Get the numeric code of the first and second colors in the list.
    int firstDigit = colorCodes[colors[0].toLowerCase()] ?? 0;
    int secondDigit = colorCodes[colors[1].toLowerCase()] ?? 0;  
    // Combine the first and second digits to form a two-digit number.
    return int.parse('$firstDigit$secondDigit');
  }
}
void main() {
  final resistorColorDuo = ResistorColorDuo();
  final result = resistorColorDuo.value(['black', 'brown']);
  print(result);
}

