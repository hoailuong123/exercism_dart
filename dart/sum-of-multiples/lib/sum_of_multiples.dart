class SumOfMultiples {
  int sum(List<int> multiples, int limit) {
    Set<int> uniqueMultiples = Set<int>();

    for (int number in multiples) {
      for (int i = number; i < limit; i += number) {
        uniqueMultiples.add(i);
      }
    }

    int sum = uniqueMultiples.fold(0, (previousValue, element) => previousValue + element);
    return sum;
  }
}

void main() {
  final sumOfMultiples = SumOfMultiples();
  final result = sumOfMultiples.sum([3, 5], 4);
  print('Sum of multiples: $result');
}
