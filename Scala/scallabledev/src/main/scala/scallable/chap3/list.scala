
object ListApp extends App {
    val oneTwo = List(1, 2)
    val threeFour = List(3, 4)
    val oneToFour = oneTwo ::: threeFour
    println(oneTwo + " and " + threeFour + " ware not mutated")
    println("Thus, " + oneToFour + " is a new list")

    val oneTwoThrree = 1 :: 2 :: 3 :: Nil
    println(oneTwoThrree)
}