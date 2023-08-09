final scores = {
  'AEIOULNRST': 1,
  'DG': 2,
  'BCMP': 3,
  'FHVWY': 4,
  'K': 5,
  'JX': 8,
  'QZ': 10
};

int score(String word) =>
    word.toUpperCase().split('').fold(0, (v, l) => v + points(l));

int points(String letter) =>
    scores[scores.keys.firstWhere((k) => k.contains(letter))] ?? 0;
