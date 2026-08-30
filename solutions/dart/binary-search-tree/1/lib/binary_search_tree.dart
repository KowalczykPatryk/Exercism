class BinarySearchTree {
  late String data;
  BinarySearchTree? left = null;
  BinarySearchTree? right = null;
  BinarySearchTree get root
  {
    return this;
  }
  BinarySearchTree(String value)
  {
    this.data = value;
  }
  void insert(String value)
  {
    if (int.parse(value) <= int.parse(this.data))
    {
      if (this.left != null)
      {
        this.left!.insert(value);
      }
      else
      {
        this.left = BinarySearchTree(value);
      }
    }
    else
    {
      if (this.right != null)
      {
        this.right!.insert(value);
      }
      else
      {
        this.right = BinarySearchTree(value);
      }
    }
  }
  List<String> get sortedData
  {
    List<String> result = [];
    if (this.left != null)
    {
      result = this.left!.sortedData;
    }
    result.add(this.data);
    if (this.right != null)
    {
      result..addAll(this.right!.sortedData);
    }
    return result;
  }
}
