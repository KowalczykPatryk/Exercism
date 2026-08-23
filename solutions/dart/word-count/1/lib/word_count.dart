class WordCount {
  Map<String, int> countWords(String subtitle)
  {
    subtitle = subtitle.toLowerCase();
    Map<String, int> count = {};
    for (String word in subtitle.split(RegExp(r'[:!?.,"&@\%^$\t\n ]')))
    {
      if(word.endsWith("'"))
      {
        word = word.substring(0, word.length-1);
      }
      if (word.startsWith("'"))
      {
        word = word.substring(1);
      }
      if (word != "")
      {
        count[word] = (count[word] ?? 0) + 1;
      }
    }
    return count;
  }
}
