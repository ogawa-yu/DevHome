class CheckAccumlator {
    var sum_ = 0
}

val acc = new CheckAccumlator
val csa = new CheckAccumlator
acc.sum_ = 3
println(acc.sum_) // 3
println(csa.sum_) // 0
