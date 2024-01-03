class Person :
    def __init__(self, name) :
        self.name = name

    def show_name(self) :
        print(self.name)

class Student(Person) :
    pass

x = Student("홍길동")
x.show_name()        
