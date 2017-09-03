abstract class Element {
    def contents: Array[String]
    def height: Int = contents.length
    def width: Int = if (height == 0) 0 else contents(0).length
    def above(that: Element): Element = 
        Element.elem(this.contents ++ that.contents)
    def beside(that: Element): Element = 
        Element.elem(
            for(
                (line1, line2) <- this.contents zip that.contents
            ) yield line1 + line2
        )
    override def toString = contents mkString "\n"
}

object Element {
    def elem(contents: Array[String]) =
        new ArrayElement(contents)
    def elem(s: String) =
        new LineElement(s)
    def elem(ch: Char, width: Int, height: Int) =
        new UniformElement(ch, width, height)
}
