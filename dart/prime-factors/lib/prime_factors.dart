import 'dart:math';

class PrimeFactors {
  List<int> factors(int number) {
    List<int> primeFactors = [];

    // Handle edge case when the number is less than 2
    if (number < 2) {
      return primeFactors;
    }

    // Divide the number by 2 repeatedly to remove all factors of 2
    while (number % 2 == 0) {
      primeFactors.add(2);
      number ~/= 2;
    }

    // Divide the number by odd numbers starting from 3
    for (int i = 3; i <= sqrt(number).toInt(); i += 2) {
      while (number % i == 0) {
        primeFactors.add(i);
        number ~/= i;
      }
    }

    // If the remaining number is greater than 2, it is a prime factor itself
    if (number > 2) {
      primeFactors.add(number);
    }

    return primeFactors;
  }
}

void main() {
  final primeFactors = PrimeFactors();
  final result = primeFactors.factors(93819012551);
  print(result); //Output: [11, 9538, 894119]
}
