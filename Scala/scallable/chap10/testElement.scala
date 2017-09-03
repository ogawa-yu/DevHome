object ElementTest extends App {
    val arrayElem = new ArrayElement(Array("a", "b", "c"))
    arrayElem.contents.foreach(println)
}
