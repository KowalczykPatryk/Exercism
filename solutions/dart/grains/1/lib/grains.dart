BigInt square(final int n) {
  if (n <= 0 || n > 64)
  {
    throw ArgumentError('square must be between 1 and 64');
  }
  BigInt result = BigInt.from(1);
  for (int i = 1; i < n; i++)
  {
    result *= BigInt.from(2);
  }
  return result;
}

BigInt total() {
  BigInt result = BigInt.from(0);
  for (int i = 1; i <= 64; i++)
  {
    result += square(i);
  }
  return result;
}
