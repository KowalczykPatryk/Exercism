class SquareRoot {
  // binary search implementation
  int squareRoot(int number)
  {
    int L = 0;
    int R = number+1;
    while (L < R - 1)
    {
      int M = ((L + R) / 2).toInt();
      if (M*M <= number)
      {
        L = M;
      }
      else
      {
        R = M;
      }
    }
    return L;
  }
  
}
