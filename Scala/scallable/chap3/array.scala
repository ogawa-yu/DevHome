val greetString = new Array[String](3)
greetString(0) = "Hello"
greetString(1) = ", "
greetString(2) = "World!"
for (i <- 0 to 2)
    print(greetString(i))
println()