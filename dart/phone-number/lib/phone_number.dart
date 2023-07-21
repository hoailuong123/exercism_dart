class PhoneNumber {
  RegExp invalidChar = RegExp(r'[()\s-.+]');
  RegExp letters = RegExp(r'[a-zA-Z]');
  RegExp punctuations = RegExp(r'@:!');

  String clean(String phoneNumber) {
    phoneNumber = phoneNumber.replaceAll(invalidChar, '');

    if (phoneNumber.length < 10) {
      throw FormatException("incorrect number of digits");
    } else if (phoneNumber.length > 11) {
      throw FormatException("more than 11 digits");
    } else if (phoneNumber.contains(letters)) {
      throw FormatException("letters not permitted");
    } else if (phoneNumber.contains(punctuations)) {
      throw FormatException("punctuations not permitted");
    } else if (phoneNumber.length == 11) {
      if (!phoneNumber.startsWith('1')) {
        throw FormatException("11 digits must start with 1");
      }
      if (phoneNumber[4].startsWith('0')) {
        throw FormatException("exchange code cannot start with zero");
      }
      if (phoneNumber[4].startsWith('1')) {
        throw FormatException("exchange code cannot start with one");
      }
    } else if (phoneNumber.length == 10) {
      if (phoneNumber.startsWith('0')) {
        throw FormatException("area code cannot start with zero");
      }
      if (phoneNumber.startsWith('1')) {
        throw FormatException("area code cannot start with one");
      }
      if (phoneNumber[3].startsWith('0')) {
        throw FormatException("exchange code cannot start with zero");
      }
      if (phoneNumber[3].startsWith('1')) {
        throw FormatException("exchange code cannot start with one");
      }
    }

    return phoneNumber;
  }
}

void main() {
  final phoneNumber = PhoneNumber();
  final result = phoneNumber.clean('(223) 456-7890');
  print(result);
}
