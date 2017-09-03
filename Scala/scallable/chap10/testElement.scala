object ElementTest extends App {
    def arrayElementTest = { 
        val arrayElem = new ArrayElement(Array("hello", "world"))
        arrayElem.contents.foreach(println)
        assert(arrayElem.height == 2, "要素数は2")
        assert(arrayElem.width == 5, "'hello'のlengthは5")
    }
    def lineElementTest = {
        val lineElem = new LineElement("hello world")
        lineElem.contents.foreach(println)
        assert(lineElem.width == 11)
        assert(lineElem.height == 1)
    }
    def uniformElementTest = {
        val unifElem = new UniformElement('A', 2, 3)
        unifElem.contents.foreach(println)
        assert(unifElem.width == 2)
        assert(unifElem.height == 3)
    }

    arrayElementTest
    lineElementTest
    uniformElementTest
}
