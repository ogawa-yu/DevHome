import java.io._

object FileMatcher extends App {
    def filesHere = (new java.io.File(".")).listFiles
    def filesMatching(query: String, matcher: (String, String) => Boolean) =
        for (file <- filesHere; if matcher(file.getName, query))
            yield file
    def filesEnding(query: String) = filesMatching(query, _.endsWith(_))
    def filesContaining(query: String) = filesMatching(query, _.contains(_))
    def filesRegex(query: String) = filesMatching(query, _.matches(_))

    println("==>endswith")
    filesEnding(args(0)).foreach(println)
    println("==>contains")
    filesContaining(args(1)).foreach(println)
    println("==>regex")
    filesContaining(args(2)).foreach(println)
}

