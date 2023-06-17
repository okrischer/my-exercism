import scala.collection.immutable.SortedMap

class School {
  type DB = Map[Int, Seq[String]]

  var roster: DB = SortedMap()

  def db: DB = roster

  def add(name: String, g: Int) =
    roster = roster.updated(g,  grade(g) :+ name)

  def grade(g: Int): Seq[String] = roster.getOrElse(g, Seq())

  def sorted: DB = roster.mapValues(_.sorted).toMap
}