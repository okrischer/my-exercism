class Triangle {
  bool isTriangle(num a, num b, num c) =>
      a > 0 && b > 0 && c > 0 && a + b >= c && b + c >= a && a + c >= b;

  bool equilateral(num a, num b, num c) =>
      isTriangle(a, b, c) && a == b && b == c;

  bool isosceles(num a, num b, num c) =>
      isTriangle(a, b, c) && (a == b || a == c || b == c);

  bool scalene(num a, num b, num c) =>
      isTriangle(a, b, c) && !isosceles(a, b, c);
}
