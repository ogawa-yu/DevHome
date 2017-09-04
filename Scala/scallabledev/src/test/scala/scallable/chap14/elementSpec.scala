import org.scalatest.FlatSpec
import org.scalatest.Matchers
import Element.elem
class ElementSpec extends FlatSpec with Matchers {
  "A UniformElement" should
    "have a width equal to the passed value" in {
      val ele = elem('x', 2, 3)
      ele.width should be (2)
    }
    it should "have a height equal to passed value" in {
      val ele = elem('x', 2, 3)
      ele.height should be (3)
    }
    it should "throw an IAE if passed a negative width" in {
      an [IllegalArgumentException] should be thrownBy {
        val ele = elem('x', -2, 3)
      }
    }
  "A LineElement" should
    "have a width equal to the passed value" in {
      val ele = elem("zzzzz")
      ele.width should be (5)
    }
    it should "have a height equal to the passed value" in {
      val ele = elem("zzzzz")
      ele.height should be (1)
    }
  "A ArrayElement" should 
    "have a width equal to the passed value" in {
      val ele = elem(Array("a", "b", "c"))
      ele.width should be (1)
    }
    it should "have a height equal to the passed value" in {
      val ele = elem(Array("a", "b", "cd"))
      ele.height should be (3)
    }
}
