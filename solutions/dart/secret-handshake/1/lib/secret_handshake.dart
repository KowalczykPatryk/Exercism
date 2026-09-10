int pow(int base, int exponent)
{
  if (exponent == 0)
  {
    return 1;
  }
  else if (exponent > 0)
  {
    int result = base;
    for (int i = 1; i < exponent; i++)
    {
      result *= base;
    }
    return result;
  }
  else
  {
    throw ArgumentError("Exponent must be positive");
  }
}

class SecretHandshake {
  List<String> commands(int decimalNumber)
  {
    if (decimalNumber == 0)
    {
      return <String>[];
    }
    List<int> binaryNumber = [0,0,0,0,0];
    int exponent = 0;
    while(pow(2,exponent) < decimalNumber)
    {
      exponent++;
    }
    if (pow(2,exponent) > decimalNumber)
    {
      exponent--;
    }
    while (decimalNumber > 0)
    {
      if (decimalNumber - pow(2, exponent) >= 0)
      {
        decimalNumber -= pow(2,exponent);
        binaryNumber[-(exponent-4)] = 1;
      }
      exponent--;
    }
    List<String> result = [];
    if (binaryNumber[4] == 1)
    {
      result.add("wink");
    }
    if (binaryNumber[3] == 1)
    {
      result.add("double blink");
    }
    if (binaryNumber[2] == 1)
    {
      result.add("close your eyes");
    }
    if (binaryNumber[1] == 1)
    {
      result.add("jump");
    }
    if (binaryNumber[0] == 1)
    {
      List<String> temp = [];
      int length = result.length;
      for (int i = 0; i < length; i++)
      {
        temp.add(result.removeLast());
      }
      result = temp;
    }
    return result;
  }
}
