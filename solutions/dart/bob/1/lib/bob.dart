class Bob {
  String response(String sentence)
  {
    if (sentence.toUpperCase() == sentence && sentence.trim().endsWith("?") && sentence.contains(RegExp(r'[A-Za-z]')))
    {
      return "Calm down, I know what I'm doing!";
    }
    else if (sentence.trim().endsWith("?"))
    {
      return "Sure.";
    }
    else if (sentence.toUpperCase() == sentence && sentence.contains(RegExp(r'[A-Za-z]')))
    {
      return "Whoa, chill out!";
    }
    else if (sentence.trim() == "")
    {
      return "Fine. Be that way!";
    }
    else
    {
      return "Whatever.";
    }
  }
}
