class Diamond {
  List<String> rows(String letter)
  {
    int length = letter.runes.first - "A".runes.first;
    List<String> result = [];
    for (int i = 0; i < length*2+1; i++)
    {
      result.add(" "*(length*2+1));
    }
    result[0] = result[0].replaceRange(length, length+1, "A");
    if (letter == "A")
    {
      return result;
    }
    for (int row = 1, position = length - 1; row <= length; row++, position--)
    {
      String currentLetter = String.fromCharCode("A".runes.first+row);
      result[row] = result[row].replaceRange(position, position+1, currentLetter);
      result[row] = result[row].replaceRange(result[row].length-1-position, result[row].length-position, currentLetter);
    }
    for (int row = length+1, position = 1; row <= 2*length-1; row++, position++)
    {
      String currentLetter = String.fromCharCode(letter.runes.first-position);
      result[row] = result[row].replaceRange(position, position+1, currentLetter);
      result[row] = result[row].replaceRange(result[row].length-1-position, result[row].length-position, currentLetter);
    }
    result[length*2] = result[length*2].replaceRange(length, length+1, "A");
    return result;
  }
}
