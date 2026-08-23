class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy)
  {
    Map<String, int> newDataFormat = {};
    for (var entry in legacy.entries)
    {
      for (var letter in entry.value)
      {
        newDataFormat[letter.toLowerCase()] = int.parse(entry.key);
      }
    }
    return newDataFormat;
  }
}
