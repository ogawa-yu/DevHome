import java.io._
import java.util.Date

object WithPrintWriter extends App {
    def withPrintWriter(file: File)(op: PrintWriter => Unit) = {
        val writer = new PrintWriter(file)
        try {
            op(writer)
        } finally {
            writer.close()
        }
    }

    withPrintWriter(new File("date.txt")) { writer =>
        writer.println(new java.util.Date)
    }
}