class ResistorColorTrio {
  static int colorValue(String color)
  {
    switch (color)
    {
      case "black":
        return 0;
      case "brown":
        return 1;
      case "red":
        return 2;
      case "orange":
        return 3;
      case "yellow":
        return 4;
      case "green":
        return 5;
      case "blue":
        return 6;
      case "violet":
        return 7;
      case "grey":
        return 8;
      case "white":
        return 9;
      default:
        return -1;
    }
  }
  static int pow(int base, int power)
  {
    int number = base;
    for (int i = 0; i < power; i++)
    {
      number *= 10;
    }
    return number;
  }
  String label(List<String> colors)
  {
    String prefix = "";
    int value = 0;
    int one = ResistorColorTrio.colorValue(colors[0]);
    int two = ResistorColorTrio.colorValue(colors[1]);
    int three = ResistorColorTrio.colorValue(colors[2]);
    if (ResistorColorTrio.colorValue(colors[1]) == 0)
    {
      value = one;
      three++;
    }
    else
    {
      value = (10 * one + two);
    }
    if (three >= 9)
    {
      prefix = "giga";
      value *= ResistorColorTrio.pow(1, three - 9);
    }
    else if (three >= 6)
    {
      prefix = "mega";
      value *= ResistorColorTrio.pow(1, three - 6);
    }
    else if (three >= 3)
    {
      prefix = "kilo";
      value *= ResistorColorTrio.pow(1, three - 3);
    }
    else
    {
      value *= ResistorColorTrio.pow(1, three);
    }
    return "${value} ${prefix}ohms";
  }
}
