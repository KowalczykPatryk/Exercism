class Strain {
  List<T> keep<T>(List<T> values, bool Function(T) fn)
  {
    List<T> keptValues = [];
    for (final value in values)
    {
      if (fn(value))
      {
        keptValues.add(value);
      }
    }
    return keptValues;
  }
  List<T> discard<T>(List<T> values, bool Function(T) fn)
  {
    List<T> discardedValues = [];
    for (final value in values)
    {
      if (!fn(value))
      {
        discardedValues.add(value);
      }
    }
    return discardedValues;
  }
}
