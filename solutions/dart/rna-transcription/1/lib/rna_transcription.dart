class RnaTranscription {
  String toRna(String DNA)
  {
    String result = "";
    for (String letter in DNA.split(""))
    {
      switch(letter)
      {
        case "G":
          result += "C";
        case "C":
          result += "G";
        case "T":
          result += "A";
        case "A":
          result += "U";
      }
    }
    return result;
  }
}
