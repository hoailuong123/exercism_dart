import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    BigInt sum = BigInt.from(0);
    int power = number.length;

    for (int i = 0; i < number.length; i++) {
      int digit = int.tryParse(number[i]) ?? 0;
      sum += BigInt.from(pow(digit, power));
    }

    return sum == BigInt.parse(number);
  }
}

void main() {
  final armstrongNumbers = ArmstrongNumbers();

  print(armstrongNumbers.isArmstrongNumber('0')); // true
  print(armstrongNumbers.isArmstrongNumber('5')); // true
  print(armstrongNumbers.isArmstrongNumber('10')); // false
  print(armstrongNumbers.isArmstrongNumber('153')); // true
  print(armstrongNumbers.isArmstrongNumber('100')); // false
  print(armstrongNumbers.isArmstrongNumber('9474')); // true
  print(armstrongNumbers.isArmstrongNumber('9475')); // false
  print(armstrongNumbers.isArmstrongNumber('9926315')); // true
  print(armstrongNumbers.isArmstrongNumber('9926314')); // false
  print(armstrongNumbers.isArmstrongNumber('186709961001538790100634132976990')); // true
  print(armstrongNumbers.isArmstrongNumber('115132219018763992565095597973971522401')); // true
}
