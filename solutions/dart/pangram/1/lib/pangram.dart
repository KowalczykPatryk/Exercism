class Pangram {
  bool isPangram(String sentence)
  {
    Set<String> allLetters = <String>{};
    for (int i = "A".runes.first; i <= "Z".runes.first; i++)
    {
      String letter = String.fromCharCode(i);
      allLetters.add(letter);
    }
    if (allLetters.length != 26)
    {
      throw Exception("There should be 26 letters in English alphabet, not ${allLetters.length}.");
    }
    for (String letter in sentence.split(""))
    {
      allLetters.remove(letter.toUpperCase());
    }
    return allLetters.length == 0;
  }
}
