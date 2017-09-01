import java.io.FileReader
import java.io.FileNotFoundException
import java.io.IOException

val file = new FileReader("input.txt")
try {
    // use file.
} catch {
    case ex: FileNotFoundException => println("file not found.")
    case ex: IOException => println("io err.")
} finally {
    file.close()
}
