class Anagram {
  List<String> findAnagrams(String target, List<String> candidates) =>
      candidates.where((word) => isAnagram(target, word)).toList();

  bool isAnagram(String target, String word) {
    if (target.toLowerCase() == word.toLowerCase()) return false;
    final t = target.toLowerCase().split('')..sort();
    final w = word.toLowerCase().split('')..sort();
    return t.join('') == w.join('');
  }
}
