object MyAssert extends App {
    val assertionEnabled = true
    def byNameAssert(msg: String, predicate: => Boolean) = 
        if (assertionEnabled && !predicate)
            throw new AssertionError(msg)

    byNameAssert("5 greater than 3", 5 > 3)

    byNameAssert("6 is a odd", 6 % 2 == 0)
}
