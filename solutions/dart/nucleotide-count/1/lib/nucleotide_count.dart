// Implement a custom InvalidNucleotideException exception

class InvalidNucleotideException implements Exception
{
  final String message;
  InvalidNucleotideException([this.message = ""]);
  @override
  String toString() => "InvalidNucleotideException: $message";
}

class NucleotideCount {
  Map<String, int> count(String DNASequence)
  {
    Map<String, int> countedLetters = {"A": 0, "C": 0, "G": 0, "T": 0};
    for(String letter in DNASequence.split(""))
    {
      if (letter.compareTo("A") == 0)
      {
        countedLetters["A"] = (countedLetters["A"] ?? 0) + 1;
      }
      else if (letter.compareTo("C") == 0)
      {
        countedLetters["C"] = (countedLetters["C"] ?? 0) + 1;
      }
      else if (letter.compareTo("G") == 0)
      {
        countedLetters["G"] = (countedLetters["G"] ?? 0) + 1;
      }
      else if (letter.compareTo("T") == 0)
      {
        countedLetters["T"] = (countedLetters["T"] ?? 0) + 1;
      }
      else
      {
        throw InvalidNucleotideException();
      }
    }
    return countedLetters;
  }
}
