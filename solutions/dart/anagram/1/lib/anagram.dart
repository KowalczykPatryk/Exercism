class Anagram {
  List<String> findAnagrams(String target, List<String> words)
  {
    List<String> result = [];
    for (String word in words)
    {
      if (word.length == target.length && word.toLowerCase() != target.toLowerCase())
      {
        List<String> wordList = List.of(word.toLowerCase().split(""));
        List<String> targetList = List.of(target.toLowerCase().split(""));
        for (String letter in word.toLowerCase().split(""))
        {
          if (targetList.contains(letter))
          {
            wordList.remove(letter);
            targetList.remove(letter);
          }
        }
        if (wordList.length == 0 && targetList.length == 0)
        {
          result.add(word);
        }
      }
    }
    return result;
  }
}
