class Forth {
  List<int> stack = [];
  Map<String, String> commands = {};
  void checkStack(int howManyNumbers)
  {
    if (!(this.stack.length >= howManyNumbers))
    {
      throw Exception("Stack empty");
    }
  }
  
  void evaluate(String code)
  {
    // 0 - reading built-in commands
    // 1 - reading the name of the new command
    // 2 - reading the value of the new command
    int readingMode = 0;
    String currentCommand = "";

    for (String element in code.trim().split(RegExp(r'\s+')))
    {
      if (readingMode == 0)
      {
        int? number = int.tryParse(element);
        if (number != null)
        {
          this.stack.add(number);
        }
        else if (this.commands.containsKey(element.toUpperCase()))
        {
          this.evaluate(this.commands[element.toUpperCase()]!);
        }
        else if (element.compareTo("+") == 0)
        {
          checkStack(2);
          int rightElem = this.stack.removeLast();
          int leftElem = this.stack.removeLast();
          this.stack.add(leftElem + rightElem);
        }
        else if (element.compareTo("-") == 0)
        {
          checkStack(2);
          int rightElem = this.stack.removeLast();
          int leftElem = this.stack.removeLast();
          this.stack.add(leftElem - rightElem);
        }
        else if (element.compareTo("*") == 0)
        {
          checkStack(2);
          int rightElem = this.stack.removeLast();
          int leftElem = this.stack.removeLast();
          this.stack.add(leftElem * rightElem);
        }
        else if (element.compareTo("/") == 0)
        {
          checkStack(2);
          int rightElem = this.stack.removeLast();
          int leftElem = this.stack.removeLast();
          if (rightElem == 0)
          {
            throw Exception("Division by zero");
          }
          this.stack.add((leftElem / rightElem).toInt());
        }
        else if (element.toUpperCase().compareTo("DUP") == 0)
        {
          checkStack(1);
          int elem = this.stack.last;
          this.stack.add(elem);
        }
        else if (element.toUpperCase().compareTo("DROP") == 0)
        {
          checkStack(1);
          this.stack.removeLast();
        }
        else if (element.toUpperCase().compareTo("SWAP") == 0)
        {
          checkStack(2);
          int rightElem = this.stack.removeLast();
          int leftElem = this.stack.removeLast();
          this.stack.add(rightElem);
          this.stack.add(leftElem);
        }
        else if (element.toUpperCase().compareTo("OVER") == 0)
        {
          checkStack(2);
          int rightElem = this.stack.removeLast();
          int leftElem = this.stack.removeLast();
          this.stack.add(leftElem);
          this.stack.add(rightElem);
          this.stack.add(leftElem);
        }
        else if (element.compareTo(":") == 0)
        {
          readingMode = 1;
        }
        else
        {
          throw Exception("Unknown command");
        }
      }
      else if (readingMode == 1)
      {
        if (int.tryParse(element) != null)
        {
          throw Exception("Invalid definition");
        }
        currentCommand = element.toUpperCase();
        readingMode = 2;
      }
      else if (readingMode == 2 || readingMode == 3)
      {
        if (element.compareTo(";") == 0)
        {
          readingMode = 0;
        }
        else
        {
          String value = element.toUpperCase();
          while (this.commands.containsKey(value))
          {
            value = this.commands[value]!;
          }
          if (this.commands.containsKey(currentCommand) && readingMode == 2)
          {
            this.commands[currentCommand] = "";
          }
          this.commands[currentCommand] = (this.commands[currentCommand] ?? "") + value + " ";
          if (readingMode == 2)
          {
            readingMode = 3;
          }
        }
      }
    }
  }
}
