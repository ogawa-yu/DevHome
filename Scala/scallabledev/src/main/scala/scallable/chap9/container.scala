object Container extends App {
    def containsNeg(nums: List[Int]) = nums.exists(_ < 0)
    def containsOdd(nums: List[Int]) = nums.exists(_ % 2 == 1)
    println(containsNeg(List(1, 3, 2, 5)))
    println(containsNeg(List(1,1,1,1,-10)))
    println(containsOdd(List(-10, 2, 4, 14)))
    println(containsOdd(List(-10, 2, 5, 14)))
}
