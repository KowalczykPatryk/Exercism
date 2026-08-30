class NthPrime {
  int prime(int n)
  {
    if (n <= 0)
    {
      throw ArgumentError("There is no zeroth prime");
    }
    int count = 0;
    int number = 1;
    while (count < n)
    {
      number++;
      bool isprime = true;
      for (int i = 2; i < number; i++)
      {
        if (number % i == 0)
        {
          isprime = false;
          break;
        }
      }
      if (isprime)
      {
        count++;
      }
    }
    return number;
  }
}
