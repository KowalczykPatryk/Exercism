class Allergies {
  Map<String, int> allergies = {
    "eggs": 1,
    "peanuts": 2,
    "shellfish": 4,
    "strawberries": 8,
    "tomatoes": 16,
    "chocolate": 32,
    "pollen": 64,
    "cats": 128
  };
  bool allergicTo(String allergyName, int allergyScore)
  {
    if (allergyScore == 0)
    {
      return false;
    }
    int? allergyValue = this.allergies[allergyName];
    if (allergyValue == null)
    {
      return false;
    }
    if (allergyValue <= allergyScore)
    {
      allergyScore -= allergyValue;
      for (MapEntry<String, int> entry in this.allergies.entries.toList().reversed)
      {
        if (entry.value <= allergyScore && entry.key != allergyName)
        {
          allergyScore -= entry.value;
        }
      }
    }
    return allergyScore == 0;
  }
  List<String> list(int allergyScore)
  {
    if (allergyScore == 0)
    {
      return <String>[];
    }

    int highestTwoMultiple = 2;
    while (highestTwoMultiple < allergyScore)
    {
      highestTwoMultiple *= 2;
    }
    if (highestTwoMultiple > allergyScore)
    {
      highestTwoMultiple = (highestTwoMultiple / 2).toInt();
    }
    while (!this.allergies.containsValue(highestTwoMultiple))
    {
      allergyScore -= highestTwoMultiple;
      highestTwoMultiple = (highestTwoMultiple / 2).toInt();
    }
    
    List<String> result = [];
    for (MapEntry<String, int> entry in this.allergies.entries.toList().reversed)
    {
      if (entry.value <= allergyScore)
      {
        allergyScore -= entry.value;
        result.add(entry.key);
      }
    }
    return List.of(result.reversed);
  }
}
