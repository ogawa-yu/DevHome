object Loop extends App {
    (1 to 10).foreach(println)

    (1 to 10).map(_ * 2).foreach(println)

    (1 to 10).filter( _ % 2 == 0).foreach(println)

    def whileLoop {
        var i = 1;
        while (i <= 3) {
            println(i)
            i += 1
        }
    }

    def forLoop {
        println("for loop using Java-style iteration")
        for(i <- 0 until args.length) {
            println(args(i))
        }
    }

    def forLoopLikeRubyStyle {
        println("for loop using Ruby-style iteration")
        args.foreach { arg =>
            println(arg)
        }
    }
 
    whileLoop
    forLoop
    forLoopLikeRubyStyle
}

