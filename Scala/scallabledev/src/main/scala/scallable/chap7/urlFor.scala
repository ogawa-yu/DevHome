import java.net.URL
import java.net.MalformedURLException

object UrlFor extends App {
    def urlFor(path: String) =
        try {
            new URL(path)
        } catch {
            case e: MalformedURLException =>
                new URL("http://www.scala-lang.org")
        }

    println(urlFor(args(0)).toString())
}
