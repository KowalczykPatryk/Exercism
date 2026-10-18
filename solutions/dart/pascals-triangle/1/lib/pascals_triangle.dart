class PascalsTriangle {
  List<List<int>> rows(int rows)
  {
    List<List<int>> result = [];
    if (rows >= 1)
    {
      result.add(<int>[1]);
    }
    for (int i = 1; i < rows; i++)
    {
      List<int> row = [];
      row.add(1);
      for (int j = 1; j < i; j++)
      {
        row.add(result[i-1][j-1]+result[i-1][j]);
      }
      row.add(1);
      result.add(row);
    }
    return result;
  }
}
