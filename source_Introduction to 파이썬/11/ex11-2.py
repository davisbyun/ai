class Person :
    name = '김정연'
    def hello(self) :
        print(Person.name + "님 안녕하세요.")

person1 = Person()
person1.hello()

Person.name = "황서영"
person1.hello()
