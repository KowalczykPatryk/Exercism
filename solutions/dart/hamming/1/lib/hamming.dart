class Hamming {
  int distance(String DNAstrand1, String DNAstrand2)
  {
    if (DNAstrand1.length != DNAstrand2.length)
    {
      throw ArgumentError("strands must be of equal length");
    }
    int count = 0;
    for (int i = 0; i < DNAstrand1.length; i++)
    {
      if (DNAstrand1[i] != DNAstrand2[i])
      {
        count++;
      }
    }
    return count;
  }
}
