import ChecksumAccumulator.calculate

object Summer {
    def main(args: Array[String]) = {
        println("app started...")
        for (arg <- args)
            println(arg + ": " + calculate(arg))

        println("app completed.")
    }
}
