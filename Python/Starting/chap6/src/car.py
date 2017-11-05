class Car:
    def exclaim(self):
        return "I'm car"

class Yugo(Car):
    def exclaim(self):
        return "I'm yugo"


if __name__ == '__main__':
    car = Car()
    yugo = Yugo()
    print(car.exclaim())
    print(yugo.exclaim())