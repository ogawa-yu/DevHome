class application extends App {
    implicit def IntToR(x: Int) = new Rational(x)
    val oneHalf = new Rational(1, 2)
    val twoThird = new Rational(2, 3)
    println(((oneHalf / 7) + (1 - twoThird)).toString())
}
