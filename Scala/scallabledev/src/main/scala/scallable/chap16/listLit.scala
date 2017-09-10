object LiteralList extends App {
  val fruit = "apple" :: ("banana" :: ("grape" :: Nil))
  val nums = 2 :: (5 :: (9 :: (7 :: Nil)))
  val diag3 =
    (1 :: (2 :: (3 :: Nil))) ::
    (4 :: (5 :: (6 :: Nil))) ::
    (7 :: (8 :: (9 :: Nil))) :: Nil
  val empty = Nil

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
