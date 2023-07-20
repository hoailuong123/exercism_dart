class ResistorColor {
  List<String> colors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white'
  ];

  int colorCode(String color) {
    int index = colors.indexOf(color.toLowerCase());
    if (index == -1) {
      throw ArgumentError('Invalid resistor color: $color');
    }
    return index;
  }
}

void main() {
  final resistorColor = ResistorColor();
  final result = resistorColor.colorCode('orange');
  print(result); // Output: 0
}
