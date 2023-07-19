int hammingDistance(String strand1, String strand2) {
  if (strand1.length != strand2.length) {
    throw ArgumentError('strands must be of equal length');
  }

  int distance = 0;
  for (int i = 0; i < strand1.length; i++) {
    if (strand1[i] != strand2[i]) {
      distance++;
    }
  }

  return distance;
}

class Hamming {
  int distance(String strand1, String strand2) {
    return hammingDistance(strand1, strand2);
  }
}

void main() {
  final hamming = Hamming();
  final result = hamming.distance('GGACGGATTCTG', 'AGGACGGATTCT');
  print(result);
}
