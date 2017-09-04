class Rational(n: Int, d: Int) extends Ordered[Rational] {
    require(d != 0)
    private val g = gcd(n.abs, d.abs)
    val number: Int = n / g
    val denom: Int = d / g
    def this(n: Int) = this(n, 1)
    def compare(that: Rational) =
        (this.number * that.denom) - (this.denom * that.number)
    def +(that: Rational): Rational = {
        return new Rational(
            number * that.denom + that.number * denom,
            denom * that.denom
        )
    }
    def +(that: Int): Rational =
        new Rational(number + that * denom, denom)

    def -(that: Rational): Rational = {
        return new Rational(
            number * that.denom - that.number * denom,
            denom * that.denom
        )
    }
    def -(that: Int): Rational =
        this + new Rational(that) * (-1)
        
    def *(that: Rational): Rational = 
        new Rational(number * that.number,denom * that.denom)
    def *(that: Int) : Rational =
        new Rational(number * that, denom)

    def /(that: Rational): Rational =
        new Rational(number * that.denom, denom * that.number)
    def /(that: Int) : Rational =
        new Rational(number, denom * that)
    
    def lessThan(that: Rational) = this.number * that.denom < this.denom * that.number

    def max(that: Rational) = if(lessThan(that)) that else this

    override def toString = this.number + "/" + this.denom

    private def gcd(a: Int, b: Int): Int = if (b == 0) a else gcd(b, a % b)
}
