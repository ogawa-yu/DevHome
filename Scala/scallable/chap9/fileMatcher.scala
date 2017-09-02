import java.io._

object FileMatcher extends App {
    def filesHere = (new java.io.File(".")).listFiles
    def filesEnding(query: String) =
        for (file <- filesHere; if file.getName.endsWith(query))
            yield file
    def filesContaining(query: String) =
        for (file <- filesHere; if file.getName.contains(query))
            yield file
    def filesRegex(query: String) =
        for (file <- filesHere; if file.getName.matches(query))
            yield file
    
    println("==>endswith")
    filesEnding(args(0)).foreach(println)
    println("==>contains")
    filesContaining(args(1)).foreach(println)
    println("==>regex")
    filesContaining(args(2)).foreach(println)
}

