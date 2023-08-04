// Defines two arrays: 'vowels' and 'consonantCluters'
const vowels = ['a', 'e', 'i', 'o', 'u', 'yt', 'xr'];
const consonantClusters = ['ch', 'qu', 'thr', 'th', 'sch'];
// Function called 'translate' that takes a string parameter 'phrase'
String translate(String phrase) {
// Aariable 'pigLatin' is initialized as an empty string
  var pigLatin = '';
// A 'forEach' loop is then used to iterate over each element (word) in the array
  phrase.split(' ').forEach((element) {
    pigLatin += translateWord(element) + ' ';
  });

  return pigLatin.trim();
}

// Function called 'translateWord' that takes in a string called 'phrase' as a parameter
String translateWord(String phrase) {
// Checks if the length of the `phrase` is 2 and the second character is 'y'
// If this condition is true, it returns a translated version of the phrase where the first character is moved to the end and 'ay' is added. For example, if the input is "my", the output will be "ymay".
  if (phrase.length == 2 && phrase[1] == 'y') return 'y${phrase[0]}ay';
  if (startsWithConsonantsAndY(phrase).length > 0) {
    var partial = startsWithConsonantsAndY(phrase);
    return phrase.substring(partial.length) + partial + 'ay';
  }

  // Checks if the phrase starts with a vowel by calling the function startsWithVowel(phrase).
  // If it does, it returns the phrase with 'ay' appended to the end.
  if (startsWithVowel(phrase)) return '${phrase}ay';
  if (startsWithConsonantCluster(phrase).length > 0) {
    var partial = startsWithConsonantCluster(phrase);
    return phrase.substring(partial.length) + partial + 'ay';
  }

  // Checks if the phrase starts with a consonant using the function 'startsWithConsonant(phrase)'.
  // The result of this check will be either true or false.
  if (startsWithConsonant(phrase)) {
    return (phrase.substring(1, 3) == 'qu')
        ? phrase.substring(3) + phrase[0] + 'quay'
        : phrase.substring(1) + phrase[0] + 'ay';
  }

  return '';
}

// Checks if the "phrase" starts with that string using the "startsWith" method.
// If it does, the function immediately returns true.
bool startsWithVowel(String phrase) {
  for (String vowel in vowels) if (phrase.startsWith(vowel)) return true;

  return false;
}

// 'startsWithConsonant' function takes a string 'phrase' as input and returns a boolean value.
// If the 'phrase' does not start with a vowel, the function returns 'true'  otherwise it returns 'false'.
bool startsWithConsonant(String phrase) => !startsWithVowel(phrase);
// 'startsWithConsonantCluster' function takes a string 'phrase' as input and returns a string.
// If a match is found, the function returns the matching consonant cluster. If no match is found, an empty string is returned.
String startsWithConsonantCluster(String phrase) {
  for (String consonant in consonantClusters)
    if (phrase.startsWith(consonant)) return consonant;

  return '';
}

// Function called 'startsWithConsonantsAndY' that takes a string 'phrase' as input.
String startsWithConsonantsAndY(String phrase) {
  var consonantCluster = <String>[];
  for (String char in phrase.split('')) {
    if (char == 'y') return consonantCluster.join('');
    if (vowels.contains(char)) break;
    consonantCluster.add(char);
  }

  return '';
}
void main() {
  // Test with different phrases
  final phrase1 = 'xenon';
  final phrase2 = 'therapy';
  final phrase3 = 'rhythm';
  
  print(translate(phrase1)); 
  print(translate(phrase2)); 
  print(translate(phrase3)); 
}
