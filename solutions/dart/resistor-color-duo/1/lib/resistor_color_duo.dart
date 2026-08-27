class ResistorColorDuo {
  static int colorToValue(String color)
  {
    switch(color)
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
  int value(List<String> colors)
  {
    return ResistorColorDuo.colorToValue(colors[0])*10+ResistorColorDuo.colorToValue(colors[1]);
  }
}
