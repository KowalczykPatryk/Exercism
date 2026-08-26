bool isValid(String ISBN)
{
  List<String> ISBNList = ISBN.split("");
  while(ISBNList.remove("-"));
  if (ISBNList.length != 10)
  {
    return false;
  }
  int sum = 0;
  for (int i = 0; i < 9; i++)
  {
    if (int.tryParse(ISBNList[i]) == null)
    {
      return false;
    }
    sum += int.parse(ISBNList[i])*(10-i);
  }
  if (ISBNList[9] == "X")
  {
    sum += 10;
  }
  else if (int.tryParse(ISBNList[9]) == null)
  {
    return false;
  }
  else
  {
    sum += int.parse(ISBNList[9]);
  }
  if (sum % 11 == 0)
  {
    return true;
  }
  else
  {
    return false;
  }
  
}
