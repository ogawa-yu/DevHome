def gcdLoop(x: Long, y: Long): Long = {
    var a = x
    var b = y
    while (a != 0) {
        val temp = a
        a = a % b
        b = temp
    }
    b
}
