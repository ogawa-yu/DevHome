import org.scalatest.FunSuite
import Element.elem
class ElementSuite extends FunSuite {
    test("elem test should have passed width") {
        val ele = elem('x', 2, 3)
        assert(ele.width == 2)
    }

    test("elem test should have passed height") {
        val ele = elem('y', 2, 4)
        assert(ele.height == 4)
    }
}
