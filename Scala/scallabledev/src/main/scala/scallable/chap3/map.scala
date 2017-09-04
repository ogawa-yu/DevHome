import scala.collection.mutable

object MapApp extends App {
    val treasureMap = mutable.Map[String, String]()
    treasureMap += ("foo" -> "Go to island.")
    treasureMap += ("bar" -> "Find big X on Ground.")
    treasureMap += ("boo" -> "Dig.")
    println(treasureMap("bar"))

    val romanNumeral = Map(
        1 -> "I", 2 -> "II", 3 -> "III", 4 -> "IV", 5 -> "V"
    )

    println(romanNumeral(3))
}
