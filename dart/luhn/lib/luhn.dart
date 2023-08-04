class Luhn {
  bool valid(String number) {
    number = number.replaceAll(' ', '');
    if (number.length <= 1 || RegExp(r'\D').hasMatch(number)) {
      return false;
    }

    List<int> digits =
        number.split('').reversed.toList().map((e) => int.parse(e)).toList();
    int sum = 0;
    for (int i = 0; i < digits.length; i++) {
      int digit = digits[i];
      if (i % 2 == 1) {
        digit *= 2;
        if (digit > 9) {
          digit -= 9;
        }
      }
      sum += digit;
    }

    return sum % 10 == 0;
  }
}

void main() {
  final luhn = Luhn();
  final result = luhn.valid('234 567 891 234');
  print(result);
}
