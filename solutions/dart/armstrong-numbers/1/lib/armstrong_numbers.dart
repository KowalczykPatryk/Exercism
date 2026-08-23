import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String number)
  {
    int length = number.length;
    BigInt result = BigInt.from(0);
    for(int charCode in number.runes)
    {
      BigInt digit = BigInt.parse(String.fromCharCode(charCode));
      result += digit.pow(length);
    }
    return result == BigInt.parse(number);
  }
}
