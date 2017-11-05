class Person:
    def __init__(self, input_name):
        self.hidden_name = input_name
    
    def get_name(self):
        return self.hidden_name

    def set_name(self, input_name):
        self.hidden_name = input_name
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

    e = EmailPerson('test', 'mail')
    print(e.name)
    print(e.email())