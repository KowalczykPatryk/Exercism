class Luhn {
  bool valid(String number)
  {
    number = number.replaceAll(" ", "");
    if (number.length <= 1)
    {
      return false;
    }
    if (number.contains(RegExp(r"[^0-9]")))
    {
      return false;
    }
    List<int> digits = [];
    for (int i = 0; i < number.length; i++)
    {
      digits.add(int.parse(number[i]));
    }
    for (int i = 0; i < digits.length; i++)
    {
      if (i % 2 == 1)
      {
        digits[number.length-1-i] = (digits[number.length-1-i] * 2) > 9 ? (digits[number.length-1-i] * 2 - 9) : digits[number.length-1-i] * 2;
      }
    }
    int sum = digits.reduce((value, element) => value + element);
    return sum % 10 == 0;
  }
}
