enum Classification
{
  equal,
  unequal,
  sublist,
  superlist
}

class Sublist {
  Classification sublist(List<int> listOne, List<int> listTwo)
  {
    if (listOne.length == listTwo.length)
    {
      bool equal = true;
      for(int i = 0; i < listOne.length; i++)
      {
        if (listOne[i] != listTwo[i])
        {
          equal = false;
          break;
        }
      }
      if (equal)
      {
        return Classification.equal;
      }
    }
    else if (listOne.length < listTwo.length)
    {
      if (listOne.length == 0)
      {
        return Classification.sublist;
      }
      for (int i2 = 0; i2 < listTwo.length; i2++)
      {
        for (int i1 = 0; i1 < listOne.length; i1++)
        {
          if(listOne[i1] != listTwo[i2+i1])
          {
            break;
          }
          else if (i1 == listOne.length - 1)
          {
            return Classification.sublist;
          }
        }
      }
    }
    else if (listOne.length > listTwo.length)
    {
      if (listTwo.length == 0)
      {
        return Classification.superlist;
      }
      for (int i1 = 0; i1 < listOne.length; i1++)
      {
        for (int i2 = 0; i2 < listTwo.length; i2++)
        {
          if(listOne[i1+i2] != listTwo[i2])
          {
            break;
          }
          else if (i2 == listTwo.length - 1)
          {
            return Classification.superlist;
          }
        }
      }
    }
    return Classification.unequal;
  }
}
