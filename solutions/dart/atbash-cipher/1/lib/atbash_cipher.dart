//https://en.wikipedia.org/wiki/List_of_Unicode_characters

bool isLetter(String char)
{
  return RegExp(r'^[A-Za-z]$').hasMatch(char);
}
bool isDigit(String char) 
{
  return RegExp(r'^[0-9]$').hasMatch(char);
}
bool isPunctuation(String char)
{
  return RegExp(r'^[.,?!]$').hasMatch(char);
}

class AtbashCipher {
  String encode(String plainText)
  {
    String encodedText = "";
    int count = 0;
    for (String char in plainText.toLowerCase().split(""))
    {
      if (isLetter(char))
      {
        int distance = char.runes.first - "a".runes.first;
        String newChar = String.fromCharCode("z".runes.first - distance);
        encodedText += newChar;
      }
      else if (isDigit(char))
      {
        encodedText += char;
      }
      if (isLetter(char) || isDigit(char))
      {
        count += 1;
        if (count == 5)
        {
          encodedText += " ";
          count = 0;
        }
      }
    }
    return encodedText.trim();
  }
  
  String decode(String encodedText)
  {
    String decodedText = "";
    for (String char in encodedText.split(""))
    {
      if (isLetter(char))
      {
        int distance = "z".runes.first - char.runes.first;
        char = String.fromCharCode("a".runes.first + distance);
        decodedText += char;
      }
      else if (isDigit(char))
      {
        decodedText += char;
      }
    }
    return decodedText;
  }
}
