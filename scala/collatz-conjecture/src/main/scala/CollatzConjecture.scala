import annotation.tailrec

object CollatzConjecture {

  @tailrec
  def steps(n: Int, s: Int = 0): Option[Int] = {
    if (n < 1)
      None
    else if (n == 1)
      Some(s)
    else if (n % 2 == 0)
      steps(n / 2, s + 1)
    else
      steps(3 * n + 1, s + 1)
  }
}