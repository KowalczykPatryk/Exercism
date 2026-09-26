import 'package:binary_search/value_not_found_exception.dart';

class BinarySearch {
  late List<int> numbers;
  BinarySearch(this.numbers);
  int find(int number)
  {
    int left = 0, right = this.numbers.length-1;
    while (left <= right)
    {
      int middleIdx = left + ((right-left) / 2).toInt();
      if (this.numbers[middleIdx] == number)
      {
        return middleIdx;
      }
      else if (this.numbers[middleIdx] > number)
      {
        right = middleIdx - 1;
      }
      else
      {
        left = middleIdx + 1;
      }
    }
    throw ValueNotFoundException("Value is not in array.");
  }
}
