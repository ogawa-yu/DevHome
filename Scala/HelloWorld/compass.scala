package my

class Compass {

    val directions = List("north", "east", "south", "west")
    var bearing = 0

    print("Initial bearing: ")
    println(direction)

    def direction() {
        if (0 <= bearing && bearing < directions.size) {
            directions(bearing)
        }
    }

    def inform(turnDirection: String) {
        println("Turning " + turnDirection + ". Now bearing " + direction)
    }

    def turnRight() {
        bearing = (bearing + 1) % directions.size
        inform("right")
    }

    def turnLeft() {
        //bearing -= 1
        if (bearing == 0) {
            bearing = directions.size - 1
        }
        inform("left")
    }
}

