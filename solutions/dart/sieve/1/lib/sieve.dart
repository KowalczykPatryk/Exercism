class Sieve {
  List<int> primes = [];
  Sieve(int to)
  {
    // There is sth like list comprehension from python:
    // List<int> numbers = [for (int i = 1; i <= 5; i++) i];
    List<int> numbers = List.generate(to+1, (index) => index);
    numbers.remove(0);
    numbers.remove(1);
    for (int i = 0; i < numbers.length; i++)
    {
      numbers.removeWhere((n) => n != numbers[i] && n % numbers[i] == 0);
    }
    this.primes = numbers;
  }
  
}
