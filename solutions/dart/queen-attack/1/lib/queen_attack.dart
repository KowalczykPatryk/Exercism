class Queen {
  late int row;
  late int col;
  Queen(int row, int col)
  {
    if (row < 0)
    {
      throw AssertionError("row not positive");
    }
    if (col < 0)
    {
      throw AssertionError("column not positive");
    }
    if (row > 7)
    {
      throw AssertionError("row not on board");
    }
    if (col > 7)
    {
      throw AssertionError("column not on board");
    }
    this.row = row;
    this.col = col;
  }
  bool canAttack(Queen other)
  {
    if (other.row == this.row || other.col == this.col)
    {
      return true;
    }
    if ((other.row - this.row).abs() == (other.col - this.col).abs())
    {
      return true;
    }
    return false;
  }
}
