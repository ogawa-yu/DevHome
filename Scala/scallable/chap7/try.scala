import java.io.FileReader
import java.io.FileNotFoundException
import java.io.IOException

try {
    val file = new FileReader("input.txt")
} catch {
    case ex: FileNotFoundException => println("file not found.")
    case ex: IOException => println("io err.")
}
