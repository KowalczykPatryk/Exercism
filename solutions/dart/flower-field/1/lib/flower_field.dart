class FlowerField {
  List<String> garden;
  FlowerField(this.garden);
  bool isInside(int i, int j)
  {
    return i >= 0 && i < this.garden.length && j >= 0 && j < this.garden[0].length;
  }
  List<String> get annotated
  {
    if (this.garden.length == 0 || this.garden[0].length == 0)
    {
      return this.garden;
    }
    for (int i = 0; i < this.garden.length; i++)
    {
      for (int j = 0; j < this.garden[0].length; j++)
      {
        int count = 0;
        if (this.garden[i][j] == " ")
        {
          for (int k = i - 1; k <= i + 1; k++)
          {
            for (int l = j - 1; l <= j + 1; l++)
            {
              if(k == i && l == j)
              {
                continue;
              }
              if (isInside(k,l) && this.garden[k][l] == "*")
              {
                count++;
              }
            }
          }
        }
        if (count != 0)
        {
          this.garden[i] = this.garden[i].replaceRange(j, j+1, "${count}");
        }
      }
    }
    return this.garden;
  }
}
