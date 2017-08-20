class Rational(n: Int, d: Int) {
    require(d != 0)
    private val g = gcd(n.abs, d.abs)
    val number: Int = n / g
    val denom: Int = d / g
    def this(n: Int) = this(n, 1)
    def add(that: Rational): Rational = {
        return new Rational(
            number * that.denom + that.number * denom,
            denom * that.denom
        )
    }

    def lessThan(that: Rational) = this.number * that.denom < this.denom * that.number

    def max(that: Rational) = if(lessThan(that)) that else this

    override def toString = this.number + "/" + this.denom

    private def gcd(a: Int, b: Int): Int = if (b == 0) a else gcd(b, a % b)
}
