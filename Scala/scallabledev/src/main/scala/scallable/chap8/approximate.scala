
object Approximate extends App {
    def approximate(guess: Double):Double =
        if (isGoodEnough(guess)) guess
        else approximate(improve(guess))

    def isGoodEnough(guess: Double):Boolean = guess < 1.0

    def improve(guess: Double):Double = guess * 0.5
    def getElapsed(): Long = System.currentTimeMillis

    val start = getElapsed()
    println(approximate(args(0).toDouble))
    println("result=" + (getElapsed() - start).toString)
}