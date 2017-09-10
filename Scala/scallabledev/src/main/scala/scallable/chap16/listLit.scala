object LiteralList extends App {
  val fruit: List[String] = List("apple", "banana", "grape")
  val nums: List[Int] = List(2, 5, 9, 13)
  val diag3: List[List[Int]] =
    List(
      List(1, 2, 3),
      List(4, 5, 6),
      List(7, 8 ,9)
    )
  val empty: List[Nothing] = List()
  
  fruit.foreach(e =>print(e + " "))
  println("")
  nums.foreach(e =>print(e + " "))
  println("")
  diag3.foreach(e => {
    e.foreach(ee => print(ee + " "))
    println("")
  })
  println(empty)
}
