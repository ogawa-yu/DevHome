class Rational(n: Int, d: Int) {
    require(d != 0)
    override def toString = n + "/" + d
    val number: Int = n
    val denom: Int = d

    def add(that: Rational): Rational = {
        return new Rational(
            number * that.denom + that.number * denom,
            denom * that.denom
        )
    }
}
