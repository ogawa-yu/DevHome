case class Person(name : String, age : Int, sex : String)

object PatternMatch extends App {

    val person =  Person("Matsuda", 26, "man")
    person match {
        case Person(name, age, "man"  ) => printf("Hello Mr.%s! Are you %d your old?\n", name, age)
        case Person(name, _  , "woman") => printf("Hello, Mrs.%s\n", name)
        case Person(name, _  , _      ) => println("Hello, ...?")
    }
}

