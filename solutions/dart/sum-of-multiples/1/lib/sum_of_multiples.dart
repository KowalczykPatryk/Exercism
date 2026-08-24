class SumOfMultiples {
  int sum(List<int> baseValues, int level)
  {
    Set<int> multiplies = {};
    for (final baseValue in baseValues)
    {
      if (baseValue == 0)
      {
        continue;
      }
      int n = 1;
      while (n * baseValue < level)
      {
        multiplies.add(n*baseValue);
        n++;
      }
    }
    int sum = 0;
    for (final value in multiplies)
    {
      sum += value;
    }
    return sum;
  }
}
