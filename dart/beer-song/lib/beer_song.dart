class BeerSong {
  String capitalizeWord(String word) {
    if (word.isEmpty) {
      return word;
    }
    return word[0].toUpperCase() + word.substring(1);
  }

  List<String> _verse(int bottles) {
    String currentBottle = _bottleText(bottles);
    String nextBottle = _bottleText(bottles - 1);

    var verse = <String>[];
    verse.add(
        "${capitalizeWord(currentBottle)} of beer on the wall, $currentBottle of beer.");
    if (bottles > 1) {
      verse.add(
          "Take one down and pass it around, $nextBottle of beer on the wall.");
    } else if (bottles == 1) {
      verse.add(
          "Take it down and pass it around, $nextBottle of beer on the wall.");
    } else {
      verse.add(
          "Go to the store and buy some more, 99 bottles of beer on the wall.");
    }
    return verse;
  }

  List<String> recite(int start, int numberOfLyrics) {
    var s = <String>[];
    int end = start - numberOfLyrics + 1;
    for (var i = start; i >= end; i--) {
      s.addAll(_verse(i));
      if (i != end) s.add("");
    }
    return s;
  }

  String _bottleText(int bottles) {
    if (bottles == 0) {
      return "no more bottles";
    } else if (bottles == 1) {
      return "1 bottle";
    } else {
      return "$bottles bottles";
    }
  }
}

void main() {
  final beerSong = BeerSong();
  final result = beerSong.recite(99, 1);
  print(result);
  final test = <String>[
    '99 bottles of beer on the wall, 99 bottles of beer.',
    'Take one down and pass it around, 98 bottles of beer on the wall.'
  ];
  print(test);
  print(result == test);
}
