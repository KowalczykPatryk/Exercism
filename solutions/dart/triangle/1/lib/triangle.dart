class Triangle {
  bool isTriangle(double a, double b, double c)
  {
    return a+b>=c && b+c>=a && a+c>=b && a > 0 && b > 0 && c > 0;
  }
  bool equilateral(double a, double b, double c)
  {
    if (isTriangle(a,b,c))
    {
      return a == b && b == c && a == c;
    }
    return false;
  }
  bool isosceles(double a, double b, double c)
  {
    List<double> values = [a,b,c];
    int count = 0;
    if (isTriangle(a,b,c))
    {
      for (double value1 in values)
      {
        for (double value2 in values)
        {
          if (value1 == value2)
          {
            count++;
          }
        }
      }
      if (count - 3 >= 2)
      {
        return true;
      }
    }
    return false;
  }
  bool scalene(double a, double b, double c)
  {
    if (isTriangle(a,b,c))
    {
      return a != b && b != c && a != c;
    }
    return false;
  }
}
