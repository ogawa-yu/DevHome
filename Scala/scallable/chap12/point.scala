class Point(val x: Int, val y: Int) {
    def +(that: Point) = 
        new Point(x + that.x, y + that.y)
    def -(that: Point) =
        new Point(x - that.x, y - that.y)
    override def toString = "[" + x + ", " + y + "]"
}
