object ElementTest extends App {
    val arrayElem = new ArrayElement(Array("hello", "world"))
    arrayElem.contents.foreach(println)
    assert(arrayElem.height == 2, "要素数は2")
    assert(arrayElem.width == 5, "'hello'のlengthは5")
}
