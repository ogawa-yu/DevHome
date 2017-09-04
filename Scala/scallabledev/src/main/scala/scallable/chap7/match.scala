object Match extends App {
    val firstArg = if (args.length > 0) args(0) else ""

    firstArg match {
        case "salt" => println("papper")
        case "chips" => println("salsa")
        case "eggs" => println("becon")
        case _ => println("huh?")
    }
}
