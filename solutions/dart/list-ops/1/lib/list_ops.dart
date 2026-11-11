extension ListOps on List {
  void append<T>(List<T> other) {
    for (T item in other)
    {
      this.add(item);
    }
  }

  List<T> concat<T>() {
    List<T> result = [];
    for (List<T> sublist in this)
    {
      for (T elem in sublist)
      {
        result.add(elem);
      }
    }
    return result;
  }

  List<T> filter<T>(bool Function(T elem) predicate) {
    List<T> result = [];
    for (T item in this)
    {
      if (predicate(item))
      {
        result.add(item);
      }
    }
    return result;
  }

  int count() {
    int n = 0;
    for (var elem in this)
    {
      n++;
    }
    return n;
  }

  List<T> myMap<T>(T Function(T elem) fn) {
    List<T> result = [];
    for (T item in this)
    {
      result.add(fn(item));
    }
    return result;
  }

  U foldl<T, U>(U initial, U Function(U acc, T elem) fn) {
    for(T item in this)
    {
      initial = fn(initial, item);
    }
    return initial;
  }

  U foldr<T, U>(U initial, U Function(T elem, U acc) fn) {
    for (T item in this.reverse())
    {
      initial = fn(item, initial);
    }
    return initial;
  }

  List<T> reverse<T>() {
    List<T> result = [];
    for (int i = this.count() - 1; i >= 0; i--)
    {
      result.add(this[i]);
    }
    return result;
  }
}
