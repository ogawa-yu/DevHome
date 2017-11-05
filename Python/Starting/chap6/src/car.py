class Car:
    def exclaim(self):
        return "I'm " + self._name()
    def _name(self):
        return 'car'

class Yugo(Car):
    def _name(self):
        return 'yugo'

if __name__ == '__main__':
    car = Car()
    yugo = Yugo()
    print(car.exclaim())
    print(yugo.exclaim())