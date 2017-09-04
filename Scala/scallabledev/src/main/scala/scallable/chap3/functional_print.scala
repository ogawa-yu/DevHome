object FunctionalPrint extends App {
    def formatArgs(args: Array[String]) = args.mkString(" ")

    println(formatArgs(args))
}
