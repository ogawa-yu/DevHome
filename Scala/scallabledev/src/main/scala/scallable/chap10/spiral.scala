import Element.elem

object Spiral {
  val space = elem(" ")
  val corner = elem("+")
  def spiral(nEdges: Int): Element = spiral(nEdges, 0)
  private def spiral(nEdges: Int, direction: Int): Element = {
    if (nEdges == 1)
      elem("+")
    else {
      val sp = spiral(nEdges - 1, (direction + 3) % 4)
      val verticalBar = elem('|', 1, sp.height)
      val horizonalBar = elem('-', sp.width, 1)
      if (direction == 0)
        (corner beside horizonalBar) above (sp beside space)
      else if (direction == 1)
        (sp above space) beside (corner above verticalBar)
      else if (direction == 2)
        (space beside sp) above (horizonalBar beside corner)
      else
        (verticalBar above corner) beside (space above sp)
    }
  }
  def main(args: Array[String]) = {
    val nEdges = args(0).toInt
    println(spiral(nEdges))
  }
}
