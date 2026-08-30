class Isogram {
  bool isIsogram(String word)
  {
    List<String> letters = word.toLowerCase().split("");
    while (letters.remove(" "));
    while (letters.remove("-"));
    return (Set.of(letters).length == letters.length);
  }
}
