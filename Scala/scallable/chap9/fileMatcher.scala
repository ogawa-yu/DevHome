import java.io._

object FileMatcher extends App {
    def filesHere = (new java.io.File(".")).listFiles
    def filesMatching(query: String, matcher: (String) => Boolean) =
        for (file <- filesHere; if matcher(file.getName))
            yield file
    def filesEnding(query: String) = filesMatching(query, _.endsWith(query))
    def filesContaining(query: String) = filesMatching(query, _.contains(query))
    def filesRegex(query: String) = filesMatching(query, _.matches(query))

    println("==>endswith")
    filesEnding(args(0)).foreach(println)
    println("==>contains")
    filesContaining(args(1)).foreach(println)
    println("==>regex")
    filesContaining(args(2)).foreach(println)
}

