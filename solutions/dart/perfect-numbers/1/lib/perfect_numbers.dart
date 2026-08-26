enum Classification
{
  perfect,
  abundant,
  deficient
}

class PerfectNumbers {
  classify(int number)
  {
    if (number <= 0)
    {
      throw ArgumentError();
    }
    int sum = 0;
    for (int i = 1; i < number; i++)
    {
      if (number % i == 0)
      {
        sum += i;
      }
    }
    if (sum == number)
    {
      return Classification.perfect;
    }
    else if (sum > number)
    {
      return Classification.abundant;
    }
    else
    {
      return Classification.deficient;
    }
  }
}
