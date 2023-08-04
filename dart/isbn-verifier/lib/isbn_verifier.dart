bool isValid(String isbn) {
  // Preprocess the input string to remove hyphens and any whitespace
  isbn = isbn.replaceAll('-', '').replaceAll(' ', '');

  // Check if the ISBN has 10 characters after preprocessing
  if (isbn.length != 10) {
    return false;
  }

  // Calculate the sum using the ISBN formula
  int sum = 0;
  for (int i = 0; i < isbn.length - 1; i++) {
    // Check if the character is a digit or 'X'
    if (isbn[i] != 'X' && !isbn[i].contains(RegExp(r'[0-9]'))) {
      return false;
    }

    // Convert the character to a digit (or 10 for 'X')
    int digit = isbn[i] == 'X' ? 10 : int.parse(isbn[i]);

    // Calculate the sum based on the formula
    sum += digit * (10 - i);
  }

  // Check the last character for 'X' or a digit
  if (isbn[isbn.length - 1] != 'X' &&
      !isbn[isbn.length - 1].contains(RegExp(r'[0-9]'))) {
    return false;
  }

  // Convert the last character to a digit (or 10 for 'X')
  int lastDigit =
      isbn[isbn.length - 1] == 'X' ? 10 : int.parse(isbn[isbn.length - 1]);

  // Calculate the sum with the last digit included
  sum += lastDigit;

  // Check if the sum is divisible by 11
  return sum % 11 == 0;
}

void main() {
  // Test cases
  print(isValid('3-598-21508-8')); // true
  print(isValid('3-598-21507-X')); // true
  print(isValid('3598215088')); // true
  print(isValid('359821507X')); // true
  print(isValid('3-598-21508-9')); // false
  print(isValid('3-598-21508-X')); // false
  print(isValid('3-598-21508-80')); // false
  print(isValid('3-598-21507')); //false
}
