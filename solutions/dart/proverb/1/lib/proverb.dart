class Proverb {
  String recite(List<String> pieces)
  {
    String result = "";
    if (pieces.length == 0)
    {
      return result;
    }
    for (int i = 0; i < pieces.length - 1; i++)
    {
      result += "For want of a ${pieces[i]} the ${pieces[i+1]} was lost.\n";
    }
    result += "And all for the want of a ${pieces[0]}.";
    return result;
  }
}
