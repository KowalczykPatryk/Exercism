import 'package:yacht/categories.dart';

class Yacht {
  List<int> numbers;
  Yacht(this.numbers);
  int score(Category category)
  {
    if (category == Category.ones)
    {
      return this.numbers.where((n) => n == 1).fold(0,(a,b) => a+b);
    }
    else if (category == Category.twos)
    {
      return this.numbers.where((n) => n == 2).fold(0,(a,b) => a+b);
    }
    else if (category == Category.threes)
    {
      return this.numbers.where((n) => n == 3).fold(0,(a,b) => a+b);
    }
    else if (category == Category.fours)
    {
      return this.numbers.where((n) => n == 4).fold(0,(a,b) => a+b);
    }
    else if (category == Category.fives)
    {
      return this.numbers.where((n) => n == 5).fold(0,(a,b) => a+b);
    }
    else if (category == Category.sixes)
    {
      return this.numbers.where((n) => n == 6).fold(0,(a,b) => a+b);
    }
    else if (category == Category.full_house)
    {
      Map<int, int> counts = {};
      for (int elem in this.numbers)
      {
        counts[elem] = (counts[elem] ?? 0) + 1;
      }
      if (!(counts.values.any((n) => n == 3) && counts.values.any((n) => n == 2)))
      {
        return 0;
      }
      else
      {
        return this.numbers.reduce((a,b) => a+b);
      }
    }
    else if (category == Category.four_of_a_kind)
    {
      Map<int, int> counts = {};
      for (int elem in this.numbers)
      {
        counts[elem] = (counts[elem] ?? 0) + 1;
      }
      if (!counts.values.any((n) => n >= 4))
      {
        return 0;
      }
      for (MapEntry<int, int> entry in counts.entries)
      {
        if (entry.value >= 4)
        {
          return entry.key * 4;
        }
      }
    }
    else if (category == Category.little_straight)
    {
      Set<int> values = Set<int>.of(this.numbers);
      if (values.length == 5 && values.containsAll([1,2,3,4,5]))
      {
        return 30;
      }
      return 0;
    }
    else if (category == Category.big_straight)
    {
      Set<int> values = Set<int>.of(this.numbers);
      if (values.length == 5 && values.containsAll([2,3,4,5,6]))
      {
        return 30;
      }
      return 0;
    }
    else if (category == Category.choice)
    {
      return this.numbers.reduce((a,b) => a+b);
    }
    else if (category == Category.yacht)
    {
      Set<int> distict = Set<int>.of(this.numbers);
      if (distict.length == 1)
      {
        return 50;
      }
      else
      {
        return 0;
      }
    }
    return 0;
  }
}
