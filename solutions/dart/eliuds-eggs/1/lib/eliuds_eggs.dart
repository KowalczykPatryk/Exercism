import "dart:math";

class EggCounter {
  int count(int decimalNumber)
  {
    int exponent = 0;
    int base = 2;
    while(pow(base, exponent) < decimalNumber)
    {
      exponent += 1;
    }
    if (pow(base, exponent) > decimalNumber)
    {
       exponent -= 1; 
    }
    int count = 0;
    while(decimalNumber > 0)
    {
      if (pow(base, exponent) <= decimalNumber)
      {
        decimalNumber -= pow(base, exponent).toInt();
        count += 1;
      }
      exponent -= 1;
    }
    return count;
  }
}
