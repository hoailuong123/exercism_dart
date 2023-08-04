class NthPrime {
  int prime(int n) {
    if (n <= 0) {
      throw ArgumentError('There is no zeroth prime');
    }

    int count = 0;
    int number = 2; // Start checking for prime numbers from 2.

    while (count < n) {
      if (_isPrime(number)) {
        count++;
      }
      number++;
    }

    // The loop exits when count reaches n, and number is already incremented once more.
    return number - 1;
  }

  bool _isPrime(int num) {
    if (num <= 1) {
      return false;
    }
    for (int i = 2; i <= num ~/ 2; i++) {
      if (num % i == 0) {
        return false;
      }
    }
    return true;
  }
}

void main() {
  final nthPrime = NthPrime();
  final result = nthPrime.prime(10001);
  print(result); 
}
