class MatchingBrackets {
  bool isPaired(String code)
  {
    for (String char in code.split(""))
    {
      if (!["[", "]", "(", ")", "{", "}"].contains(char))
      {
        code = code.replaceAll(char, "");
      }
    }
    print("Here: "+code);
    Map<String, String> pairs = {"}":"{", "]":"[", ")":"("};
    List<String> stack = [];
    for (String char in code.split(""))
    {
      if (pairs.values.contains(char))
      {
        stack.add(char);
      }
      else
      {
        if (!stack.isEmpty && stack.last == pairs[char])
        {
          stack.removeLast();
        }
        else
        {
          return false;
        }
      }
    }
    return stack.isEmpty;
  }
}
