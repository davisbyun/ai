class Person :
    def __init__(self, name) :
        self.name = name

    def show_name(self) :
        print(self.name)
    def show_age(self) :
        print(self.age)

class Student(Person) :
    def __init__(self, name, age) :
        super().__init__(name)
        self.age = age
    
x  = Student("홍길동", 20)
x.show_name()
x.show_age()
    
