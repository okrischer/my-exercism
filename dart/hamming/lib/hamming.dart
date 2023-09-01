//import 'dart:collection';

class Hamming {
  int distance(String a, String b) {
    if (a.length != b.length)
      throw ArgumentError("strands must be of equal length");

    return Iterable<int>.generate(a.length).where((i) => a[i] != b[i]).length;
  }
}
