class Raindrops {
  String convert(int number) {
    String result = '';
    if (number % 3 == 0) {
      result += 'Pling';
    }
    if (number % 5 == 0) {
      result += 'Plang';
    }
    if (number % 7 == 0) {
      result += 'Plong';
    }
    if (result.isEmpty) {
      result = number.toString();
    }
    return result;
  }
}

void main() {
  final raindrops = Raindrops();
  print(raindrops.convert(28)); // Output: Plong
  print(raindrops.convert(30)); // Output: PlingPlang
  print(raindrops.convert(34)); // Output: 34
  print(raindrops.convert(105)); //Output: PlingPlangPlong
}
