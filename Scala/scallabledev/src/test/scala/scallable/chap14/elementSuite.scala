import org.scalatest.FunSuite
import Element.elem
class ElementSuite extends FunSuite {
    test("elem test should have passed width") {
        val ele = elem('x', 2, 3)
        assertResult(2) {
            ele.width
        }
    }

    test("elem test should have passed height") {
        val ele = elem('y', 2, 4)
        assertResult(4) {
            ele.height
        }
    }

    test("elem test should throw IllegalArgumentException") {
        assertThrows[IllegalArgumentException] {
            val ele = elem('z', -2, 3)
        }
    }
}
