class Leap {
  bool leapYear(int year) {
    if (year % 4 != 0) {
      return false;
    } else if (year % 100 != 0) {
      return true;
    } else if (year % 400 != 0) {
      return false;
    } else {
      return true;
    }
  }
}

void main() {
  final leap = Leap();
  int year = 1999;
  bool result = leap.leapYear(year);

  if (result) {
    print('$year is a leap year.');
  } else {
    print('$year is not a leap year.');
  }
}
