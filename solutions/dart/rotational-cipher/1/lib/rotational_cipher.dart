class RotationalCipher {
  String rotate({required String text, required int shiftKey})
  {
    int effectiveShift = shiftKey % 26;
    if (effectiveShift == 0) return text;
    StringBuffer buffer = StringBuffer();
    for (final codeUnit in text.codeUnits) 
    {
      if (codeUnit >= 65 && codeUnit <= 90) 
      {
        buffer.writeCharCode(((codeUnit - 65 + effectiveShift) % 26) + 65);
      } 
      else if (codeUnit >= 97 && codeUnit <= 122) 
      {
        buffer.writeCharCode(((codeUnit - 97 + effectiveShift) % 26) + 97);
      } 
      else
      {
        buffer.writeCharCode(codeUnit);
      }
    }
    return buffer.toString();
  }
}
