DateTime addGigasecondTo(final DateTime dateTime) {
  final gigasecond = Duration(seconds: 1000000000);
  return dateTime.add(gigasecond);
}

void main() {
  final moment = DateTime.utc(2015, DateTime.january, 24, 23, 59, 59);
  final result = addGigasecondTo(moment);
  final expected = DateTime.utc(2046, DateTime.october, 03, 01, 46, 39);
  print(result);
  print(expected);
}
