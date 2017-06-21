object Loop extends App {
    (1 to 10).foreach(println)

    (1 to 10).map(_ * 2).foreach(println)

    (1 to 10).filter( _ % 2 == 0).foreach(println)
}

