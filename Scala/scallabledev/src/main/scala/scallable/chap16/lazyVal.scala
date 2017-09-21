object LazyVal extends App {
    val obj = new LazyVal
    println("New Object")
    println(obj.value)
}

class LazyVal {
    lazy val value: Int = {
        println("Initilize")
        5 * n
    }

    val n: Int = 3
}