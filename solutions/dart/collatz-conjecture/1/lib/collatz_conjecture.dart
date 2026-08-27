class CollatzConjecture {
  int steps(int number)
  {
    if (number <= 0)
    {
      throw ArgumentError("Only positive integers are allowed");
    }
    int count  = 0;
    while (number != 1)
    {
      if (number % 2 == 0)
      {
        number = (number / 2).toInt();
      }
      else
      {
        number = number * 3 + 1;
      }
      count++;
    }
    return count;
  }
}
