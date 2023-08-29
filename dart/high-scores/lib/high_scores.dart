class HighScores {
  final List<int> scores;
  final List<int> sorted;

  HighScores(List<int> scores)
      : scores = scores,
        sorted = List.from(scores) {
    sorted.sort((a, b) => b.compareTo(a));
  }

  int latest() => scores.last;

  int personalBest() => sorted.first;

  List<int> personalTopThree() => List.from(sorted.take(3));
}
