object ArrayApp extends App {
    val greetString = new Array[String](3)
    greetString.update(0, "Hello")
    greetString.update(1, ", ")
    greetString.update(2, "World!")
    for (i <- 0.to(2))
        print(greetString.apply(i))
    println()
}
