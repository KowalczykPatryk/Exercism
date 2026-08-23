class Raindrops {
  String convert(int number)
  {
    String result = "";
    bool divisible = false;
    if (number % 3 == 0)
    {
      result = result + "Pling";
      divisible = true;
    }
    if (number % 5 == 0)
    {
      result = result + "Plang";
      divisible = true;
    }
    if (number % 7 == 0)
    {
      result = result + "Plong";
      divisible = true;
    }
    if (!divisible)
    {
      result = number.toString();
    }
    return result;
  }
}
