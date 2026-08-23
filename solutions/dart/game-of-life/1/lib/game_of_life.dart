class GameOfLife {
  List<List<int>> grid;
  GameOfLife(this.grid);
  void tick()
  {
    List<List<int>> copyOfGrid = this.grid.map((row) => List<int>.of(row)).toList();
    for (int row = 0; row < this.grid.length; row++)
    {
      for (int col = 0; col < this.grid.first.length; col++)
      {
        int count = 0;
        for (int i = row > 0 ? row - 1: 0; i <= (row + 1 < this.grid.length ? row + 1 : this.grid.length - 1); i++)
        {
          for (int j = col > 0 ? col - 1 : 0; j <= (col + 1 < this.grid.first.length ? col + 1 : this.grid.first.length - 1); j++)
          {
            if ((i != row || j != col) && this.grid[i][j] == 1)
            {
              count++;
            }
          }
        }
        if (this.grid[row][col] == 1 && (count == 2 || count == 3))
        {
        }
        else if (this.grid[row][col] == 0 && count == 3)
        {
          copyOfGrid[row][col] = 1;
        }
        else
        {
          copyOfGrid[row][col] = 0;
        }
      }
    }
    this.grid = copyOfGrid;
  }
  List<List<int>> matrix()
  {
    return this.grid;
  }
}
