object ListAlgo extends App {
  def append[T](xs: List[T], ys: List[T]): List[T] = 
    xs match {
      case List() => ys
      case x :: xs1 => x :: append(xs1, ys)
    }
  def length[T](xs: List[T]): Int =
    xs match {
      case List() => 0
      case x :: xs1 => 1 + length(xs1)
    } 

  val l = List(2, 3, 4)
  val r = List(10, 11, 12)
  println(append(l, r))
  println("Length:" + length(l))
}
