import scala.collection.mutable

// class Accumulatorのコンパニオンオブジェクト
object ChecksumAccumulator {
    private val cache = mutable.Map.empty[String, Int]
    def calculate (s: String): Int = {
        if (cache.contains(s)) {
            cache(s)
        } else {
            val acc = new ChecksumAccumulator
            for (c <- s) 
                acc.add(c.toByte)
            val cs = acc.checksum()
            cache += (s -> cs)
            cs
        }
    }
}

class ChecksumAccumulator {
    private var sum_ = 0

    def add(b: Byte) = sum_ += b

    def checksum() = ~(sum_ & 0xFF) + 1
}
