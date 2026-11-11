// could use Base conversion using Horner's method but it requires
// doing calculations using target base
// so I use simple division method
// any number can be described as this: N = dn*b^n + ... + d2*b^2 + d1*b + d0
// where dn is the digit in the b base

int pow(int number, int n)
{
  int result = 1;
  for (int i = 0; i < n; i++)
  {
    result *= number;
  }
  return result;
}

class AllYourBase {
  List<int> rebase(int fromBase, List<int> numbers, int toBase)
  {
    if (fromBase < 2 || toBase < 2 || numbers.any((n) => n < 0 || n >= fromBase))
    {
      throw ArgumentError("Wrong");
    }
    int N = 0;
    int i = 0;
    for (int elem in numbers.reversed)
    {
      N += elem * pow(fromBase, i);
      i++;
    }
    if (N == 0)return [0];
    List<int> result = [];
    while(N > 0)
    {
      int wholePart = N ~/ toBase;
      int remainder = N % toBase;
      result.add(remainder);
      N = wholePart;
    }
    return result.reversed.toList();
  }
}
