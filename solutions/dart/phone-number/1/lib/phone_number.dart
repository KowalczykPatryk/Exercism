class PhoneNumber {
  String clean(String dirty)
  {
    dirty = dirty.replaceAll("(", "").replaceAll(")", "").replaceAll("-", "").replaceAll(".", "").replaceAll(" ", "").replaceAll("+", "");
    if (dirty.length > 11)
    {
      throw FormatException("must not be greater than 11 digits");
    }
    if (dirty.length == 11 && dirty[0] != "1")
    {
      throw FormatException("11 digits must start with 1");
    }
    if (dirty.length == 11 && dirty[0] == "1")
    {
      dirty = dirty.replaceFirst("1", "");
    }
    if (dirty.length < 10)
    {
      throw FormatException("must not be fewer than 10 digits");
    }
    if (dirty.length > 10)
    {
      throw FormatException("must not be more than 10 digits");
    }
    if (dirty[0] == "0")
    {
      throw FormatException("area code cannot start with zero");
    }
    if (dirty[0] == "1")
    {
      throw FormatException("area code cannot start with one");
    }
    if (dirty[3] == "0")
    {
      throw FormatException("exchange code cannot start with zero");
    }
    if (dirty[3] == "1")
    {
      throw FormatException("exchange code cannot start with one");
    }
    if (dirty.contains(RegExp(r"[a-zA-Z]")))
    {
      throw FormatException("letters not permitted");
    }
    if (dirty.contains(RegExp("[!@#\$%\^&*<>;:'\"]")))
    {
      throw FormatException("punctuations not permitted");
    }
    
    return dirty;
  }
}
