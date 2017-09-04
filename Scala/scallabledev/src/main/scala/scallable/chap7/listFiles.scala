object ListFiles extends App {
    for (file <- (new java.io.File(".")).listFiles)
        println(file)
}
