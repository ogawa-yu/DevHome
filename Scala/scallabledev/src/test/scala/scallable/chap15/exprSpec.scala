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
} 
