class CheckAccumlator {
    private var sum_ = 0

    def add(b: Byte) = sum_ += b

    def checksum() = ~(sum_ & 0xFF) + 1
}

object CheckAccumlatorApp extends App {
    val acc = new CheckAccumlator
    println(acc.checksum) // 0
    acc.add(1)
    println(acc.checksum) // -1
    acc.add(1)
    println(acc.checksum) // -2
}
