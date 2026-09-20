class PrimeFactors {
  int nextPrime(int number)
  {
    for (int possiblePrime = number+1;; possiblePrime++)
    {
      bool isPrime = true;
      for (int i = 2; i < possiblePrime; i++)
      {
        if (possiblePrime % i == 0)
        {
          isPrime = false;
          break;
        }
      }
      if (isPrime)
      {
        return possiblePrime;
      }
    }
  }
  List<int> factors(int number)
  {
    List<int> result = [];
    while (number != 1)
    {
      for (int i = 2; i <= number; i++)
      {
        if (number % i == 0)
        {
          number = (number / i).toInt();
          result.add(i);
          break;
        }
      }
    }
    return result;
  }
}
