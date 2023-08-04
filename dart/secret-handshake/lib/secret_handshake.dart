class SecretHandshake {
  List<String> commandsString = [
    "",
    "jump",
    "close your eyes",
    "double blink",
    "wink"
  ];
  List<String> commands(int number) {
    List<String> result = [];
    if (number < 1 && number > 31) {
      return result;
    }
    List<String> binaries =
        number.toRadixString(2).padLeft(5, '0').split('').toList();
    for (int i = 1; i < binaries.length; i++) {
      if (binaries[i] == "1") {
        result.add(commandsString[i]);
      }
    }
    if (binaries[0] == "0") result = result.reversed.toList();
    return result;
  }
}

void main() {
  SecretHandshake test = SecretHandshake();
  print(test.commands(15));
}
