import 'package:collection/collection.dart';

class HighScores {
  List<int> scores;
  HighScores(this.scores);
  int latest() => this.scores.last;
  int personalBest() => this.scores.max;
  List<int> personalTopThree()
  {
    List<int> results = [...this.scores];
    while(results.length > 3)
    {
      results.remove(results.min);
    }
    results.sort((a,b) => b.compareTo(a));
    return results;
  }
}
