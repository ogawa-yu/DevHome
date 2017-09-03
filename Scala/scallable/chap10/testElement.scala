object ElementTest extends App {
    def arrayElementTest = { 
        val arrayElem = Element.elem(Array("hello", "world"))
        arrayElem.contents.foreach(println)
        assert(arrayElem.height == 2, "要素数は2")
        assert(arrayElem.width == 5, "'hello'のlengthは5")
    }
    def lineElementTest = {
        val lineElem = Element.elem("hello world")
        lineElem.contents.foreach(println)
        assert(lineElem.width == 11)
        assert(lineElem.height == 1)
    }
    def uniformElementTest = {
        val unifElem = Element.elem('A', 2, 3)
        unifElem.contents.foreach(println)
        assert(unifElem.width == 2)
        assert(unifElem.height == 3)
    }
    def test_above = {
        val elem1 = Element.elem("I am")
        val elem2 = Element.elem("cat.")
        val elem3 = Element.elem("there is no name yet")
        assert(Array("I am", "cat.", "there is no name yet") == ((elem1 above elem2) above elem3).contents)
    }
    def test_beside = {
        val elem1 = Element.elem("I am")
        val elem2 = Element.elem(" cat.")
        val elem3 = Element.elem(" there is no name yet")

        assert("I am cat. there is no name yet" == ((elem1 beside elem2) beside elem3).toString)
    }

    arrayElementTest
    lineElementTest
    uniformElementTest
    test_beside
}
