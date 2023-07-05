import annotation.tailrec

object PrimeFactors {
  def factors(n: Long): List[Long] = {
    @tailrec
    def loop(n: Long, k: Long, acc: List[Long]): List[Long] = {
      if (n == 1) acc
      else if (k * k > n) n::acc
      else if (n % k == 0) loop(n / k, k, k::acc)
      else if (k == 2) loop(n, 3 , acc)
      else loop(n, k + 2, acc)
    }
  (loop(n, 2L, List.empty)).reverse
  }
}