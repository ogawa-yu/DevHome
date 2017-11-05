class Person:
    def __init__(self, input_name):
        self.__name = input_name
    
    def get_name(self):
        return self.__name

    def set_name(self, input_name):
        self.__name = input_name
    name = property(get_name, set_name)

class EmailPerson(Person):
    def __init__(self, input_name, email):
        super().__init__(input_name)
        self._email = email
    
    def email(self):
        return self._email

if __name__ == '__main__':
    p = Person('test')
    print(p.name)
    # "__"を属性名の前につけると"_Class名"を勝手に修飾する(マングリング)
    print(p._Person__name)

    e = EmailPerson('test', 'mail')
    print(e.name)
    print(e.email())