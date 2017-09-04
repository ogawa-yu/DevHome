import scala.collection.mutable

object MutableSet extends App {
    val movieSet = mutable.Set("Hitch", "Poltergeist")
    movieSet += "Shrek"
    println(movieSet)
}
