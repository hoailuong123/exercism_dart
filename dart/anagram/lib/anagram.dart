class Anagram {
  bool areAnagrams(String word1, String word2) {
    List<String> sortedWord1 = word1.toLowerCase().split('')..sort();
    List<String> sortedWord2 = word2.toLowerCase().split('')..sort();
    return sortedWord1.join() == sortedWord2.join();
  }

  List<String> findAnagrams(String target, List<String> candidates) {
    return candidates.where((candidate) => areAnagrams(target, candidate)).toList();
  }
}

void main() {
  final anagram = Anagram();
  final result = anagram.findAnagrams('allergy', <String>['gallery', 'ballerina', 'regally', 'clergy', 'largely', 'leading']);
  print(result); 
}
