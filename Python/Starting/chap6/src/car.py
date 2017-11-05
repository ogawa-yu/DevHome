class Car:
    def exclaim(self):
        return "I'm car"

class Yugo(Car):
    pass


if __name__ == '__main__':
    car = Car()
    yugo = Yugo()
    print(car.exclaim())
    print(yugo.exclaim())