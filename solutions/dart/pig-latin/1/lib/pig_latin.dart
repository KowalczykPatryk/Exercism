String translate(String text)
{
  String result = "";
  int count  = 0;
  for (String word in text.split(" "))
  {
    // rule 1
    if (word.startsWith(RegExp(r"[aeiou]|xr|yt")))
    {
      word = word + "ay";
    }
    // rule 2; rule 3; rule 4
    else
    {
      // rule 2; rule 3
      int movedLetters = 0;
      while (!(["a", "e", "i", "o", "u"].contains(word[0])))
      {
        // rule 3
        if (word.startsWith("qu"))
        {
          word = word.substring(2) + word[0] + word[1];
        }
        // rule 2
        else
        {
          if (movedLetters != 0 && word[0] == "y")
          {
            break;
          }
          word = word.substring(1) + word[0];
        }
        movedLetters++;
      }
      word = word + "ay";
    }
    result = result + word;
    if (!(count == text.split(" ").length-1))
    {
      result += " ";
    }
    count++;
  }
  return result;
}
