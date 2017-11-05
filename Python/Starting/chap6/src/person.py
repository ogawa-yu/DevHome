class Person:
    def __init__(self, name):
        self._name = name
    
    def name(self):
        return self._name

class EmailPerson(Person):
    def __init__(self, name, email):
        super().__init__(name)
        self._email = email
    
    def email(self):
        return self._email

if __name__ == '__main__':
    p = Person('test')
    print(p.name())

    e = EmailPerson('test', 'mail')
    print(e.name())
    print(e.email())