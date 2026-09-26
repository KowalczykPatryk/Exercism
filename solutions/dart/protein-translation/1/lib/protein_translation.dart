class ProteinTranslation {
  List<String> translate(String DNA)
  {
    List<String> result = [];
    if (DNA.length == 0)
    {
      return result;
    }
    int cursor = 0;
    while (cursor != DNA.length)
    {
      String codon = DNA.substring(cursor, cursor+3);
      print(codon);
      if (codon == "UAA" || codon == "UAG" || codon == "UGA")
      {
        return result;
      }
      else if (codon == "AUG")
      {
        result.add("Methionine");
      }
      else if (codon == "UUU" || codon == "UUC")
      {
        result.add("Phenylalanine");
      }
      else if (codon == "UUA" || codon == "UUG")
      {
        result.add("Leucine");
      }
      else if (codon == "UCU" || codon == "UCC" || codon == "UCA" || codon == "UCG")
      {
        result.add("Serine");
      }
      else if (codon == "UAU" || codon == "UAC")
      {
        result.add("Tyrosine");
      }
      else if (codon == "UGU" || codon == "UGC")
      {
        result.add("Cysteine");
      }
      else if (codon == "UGG")
      {
        result.add("Tryptophan");
      }
      else
      {
        throw ArgumentError("Not known codon");
      }
      cursor += 3;
    }
    return result;
  }
}
