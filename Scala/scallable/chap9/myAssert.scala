object MyAssert extends App {
    val assertionEnabled = true
    def myAssert(msg: String, predicate: () => Boolean) = 
        if (assertionEnabled && !predicate())
            throw new AssertionError(msg)

    myAssert("5 greater than 3", () => 5 > 3)

    myAssert("6 is a odd", () => 6 % 2 == 1)
}
