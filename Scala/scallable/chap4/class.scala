class CheckAccumlator {
    private var sum_ = 0

    def add(b: Byte): Unit = {
        sum_ += b
    }

    def checksum(): Int = {
        return ~(sum_ & 0xFF) + 1
    }
}

val acc = new CheckAccumlator
println(acc.checksum) // 0
acc.add(1)
println(acc.checksum) // -1
acc.add(1)
println(acc.checksum) // -2
