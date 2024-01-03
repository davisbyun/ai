class Members :
    def __init__(self, name, age) :
        self.name = name
        self.age = age

    def show_info(self) :
        print("이름 :", self.name)
        print("나이 :", self.age)

member1 = Members("황선영", 18)
member1.show_info()

member2 = Members("최종화", 32)
member2.show_info()

