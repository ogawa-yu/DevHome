import scala.collection.immutable.HashSet

object ImmutableApp extends App {
    var jetSet = Set("Boeing", "Airbus")
    jetSet += "Lear"
    println(jetSet.contains(args(0)))

    val hashSet = HashSet("Tomatoes", "Chilies")
    println(hashSet + "Coriander")
    println(jetSet)
}
