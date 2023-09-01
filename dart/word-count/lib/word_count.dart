class WordCount {
  Map<String, int> countWords(String subtitle) {
    final Map<String, int> counts = {};
    var splitter = RegExp(r"[^'\w]+|\B'|'\B");
    final words = subtitle.toLowerCase().split(splitter);
    for (final word in words) {
      counts.update(word, (count) => count + 1, ifAbsent: () => 1);
    }
    counts.remove('');
    return counts;
  }
}
