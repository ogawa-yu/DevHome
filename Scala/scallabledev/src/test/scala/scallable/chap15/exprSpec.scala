import org.scalatest.FlatSpec
import org.scalatest.Matchers

class ExprSpec extends FlatSpec with Matchers {
  "A Var" should 
    "have a name equal to the passed value" in {
      Var("test").name should be ("test")
    }
    it should "have a toString equal to the passed value" in {
      Var("test").toString should be ("Var(test)")
    }
    it should "not equal to the passed value" in {
      Var("test") != Var("test dayo") should be (true)
    }
  "A Expr" should
    "as same as tha passed value when negative multiplied negative one" in {
      val num = Number(3.0)
      num.simplifyAll(UnOp("-", UnOp("-", num))) == num should be (true)
    }
    it should "as same as tha passed value when abs op after abs" in {
      val num = Number(-3.0)
      num.simplifyAll(UnOp("abs", UnOp("abs", num))) == UnOp("abs", num) should be (true)
    }
    it should "as not same as tha passed value when abs op" in {
      val num = Number(-3.0)
      num.simplifyAll(UnOp("abs", num)) == UnOp("abs", num) should be (true)
    }
    it should "as same as the passed value when zero plused" in {
      val num = Number(3.0)
      num.simplifyAll(BinOp("+", num, Number(0))) == num should be (true)
    }
    it should "as same as the passed value when one multiplied" in {
      val num = Number(3.0)
      num.simplifyAll(BinOp("*", num, Number(1))) == num should be (true)
    }
    it should "as not same as the passed value" in {
      val num = Number(3.0)
      num.simplifyAll(BinOp("*", num, Number(2))) != num should be (true)
    }
    it should "same number summention as same as twice" in {
      val num = Number(2.0)
      num.simplifyAll(BinOp("+", num, num)) == BinOp("*", Number(2), num) should be (true)
    }
    it should "same result multi term expression(1)" in {
      val expr = BinOp("+", BinOp("/", Number(1.0), Number(2.0)), Number(1.0))
      expr.simplifyAll() == Number(1/2 + 1)
    }
    it should "same result multi term expression(2)" in {
      val expr = BinOp("/", Number(1.0), BinOp("+", Number(2.0), Number(1.0)))
      expr.simplifyAll() == Number(1/(2 + 1))
    }
    it should "as same as the passed expression" in {
      val expr = BinOp("+",
                    BinOp("+", Number(3.0), BinOp("*", Number(2.0), Number(1))),
                    UnOp("-", UnOp("-", BinOp("+", Number(4.0), Number(4.0)))))
      val expected = BinOp("+",
                      BinOp("+", Number(3.0), Number(2.0)),
                      BinOp("*", Number(2.0), Number(4.0)))
      expr.simplifyAll() == expected should be (true)
    }
    it should "format the passed expression: case 1" in {
      val expr = 
        BinOp("+",
          BinOp("*", BinOp("+", Var("x"), Var("y")), Var("z")), 
          Number(1.0))
      val formatter = new ExprFormatter
      formatter.format(expr).toString should be ("(x + y) * z + 1")
    }
} 
