object InsertionSort extends App {
  def isort(xs: List[Int]): List[Int] = xs match {
    case List() => List()
    case x :: xs1 => insert(x, isort(xs1)) 
  }

  def insert(x: Int, xs: List[Int]): List[Int] = xs match {
    case List() => List(x)
    case y :: ys => if (x <= y) x :: xs
                    else y :: insert(x, ys)
  }

  val in = List(10, 8, 25, 29, 5, 2, 81, 4, 1, 25, 12)
  val out = isort(in)
  println(in)
  println(out)
}