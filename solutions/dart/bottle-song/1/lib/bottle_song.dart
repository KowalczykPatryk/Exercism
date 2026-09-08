class BottleSong {
  List<String> verses = [
"Ten green bottles hanging on the wall,",
"Ten green bottles hanging on the wall,",
"And if one green bottle should accidentally fall,",
"There'll be nine green bottles hanging on the wall.",

"Nine green bottles hanging on the wall,",
"Nine green bottles hanging on the wall,",
"And if one green bottle should accidentally fall,",
"There'll be eight green bottles hanging on the wall.",

"Eight green bottles hanging on the wall,",
"Eight green bottles hanging on the wall,",
"And if one green bottle should accidentally fall,",
"There'll be seven green bottles hanging on the wall.",

"Seven green bottles hanging on the wall,",
"Seven green bottles hanging on the wall,",
"And if one green bottle should accidentally fall,",
"There'll be six green bottles hanging on the wall.",

"Six green bottles hanging on the wall,",
"Six green bottles hanging on the wall,",
"And if one green bottle should accidentally fall,",
"There'll be five green bottles hanging on the wall.",

"Five green bottles hanging on the wall,",
"Five green bottles hanging on the wall,",
"And if one green bottle should accidentally fall,",
"There'll be four green bottles hanging on the wall.",

"Four green bottles hanging on the wall,",
"Four green bottles hanging on the wall,",
"And if one green bottle should accidentally fall,",
"There'll be three green bottles hanging on the wall.",

"Three green bottles hanging on the wall,",
"Three green bottles hanging on the wall,",
"And if one green bottle should accidentally fall,",
"There'll be two green bottles hanging on the wall.",

"Two green bottles hanging on the wall,",
"Two green bottles hanging on the wall,",
"And if one green bottle should accidentally fall,",
"There'll be one green bottle hanging on the wall.",

"One green bottle hanging on the wall,",
"One green bottle hanging on the wall,",
"And if one green bottle should accidentally fall,",
"There'll be no green bottles hanging on the wall.",
  ];
    List<String> recite(int whichOne, int howMany)
    {
      int step = 4;
      int which = 4*(10 - whichOne);
      List<String> result = [];
      for (int i = which; i < which + 4 * howMany; i++)
      {
        if (i % 4 == 0 && i != which)
        {
          result.add("");
        }
        result.add(this.verses[i]);
      }
      return result;
    }
}
