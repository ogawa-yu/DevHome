import Element.elem
abstract class Element {
    def contents: Array[String]
    def height: Int = contents.length
    def width: Int = if (height == 0) 0 else contents(0).length
    def above(that: Element): Element = 
        elem(this.contents ++ that.contents)
    def beside(that: Element): Element = 
        elem(
            for(
                (line1, line2) <- this.contents zip that.contents
            ) yield line1 + line2
        )
    override def toString = contents mkString "\n"
}

object Element {
    private final class ArrayElement(val contents: Array[String]) extends Element 
    private final class LineElement(s: String) extends Element {
        val contents = Array(s)
        override def width: Int = s.length
        override def height: Int = 1
    }
    private final class UniformElement (
        ch: Char,
        override val width: Int,
        override val height : Int
    ) extends Element {
        private val line = ch.toString * width
        def contents = Array.fill(height)(line)
    }

    def elem(contents: Array[String]): Element =
        new ArrayElement(contents)
    def elem(s: String): Element =
        new LineElement(s)
    def elem(ch: Char, width: Int, height: Int): Element =
        new UniformElement(ch, width, height)
}
