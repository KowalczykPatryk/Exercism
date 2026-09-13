class Acronym {
  String abbreviate(String sentence)
  {
    sentence = sentence.replaceAll("-", " ");
    sentence = sentence.replaceAll(RegExp(r"[^A-Za-z ]"), "");
    String result = "";
    for (String word in sentence.split(" "))
    {
      if (word != "")
      {
        result += word[0].toUpperCase();
      }
    }
    return result;
  }
}
