class MatchingBrackets {
  static const match = {'}': '{', ']': '[', ')': '('};
  static const opening = '{[(';
  static const closing = '}])';

  bool isPaired(String input) {
    final stack = <String>[];
    for (final c in input.split('')) {
      if (opening.contains(c)) {
        stack.add(c);
      } else if (closing.contains(c)) {
        if (stack.isEmpty || stack.removeLast() != match[c]) return false;
      }
    }
    return stack.isEmpty;
  }
}
