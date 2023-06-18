object Hamming {
  def distance(dna1: String, dna2: String): Option[Int] = {
    if (dna1.size != dna2.size)
      None
    else
      Some(dna1.zip(dna2).count(e => e._1 != e._2))
  }
}