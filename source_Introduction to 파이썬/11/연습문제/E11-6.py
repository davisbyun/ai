# 정답 : ① super()  ② print_father()  ③ print_child()
class Father:
    def __init__(self, father_name):
        self.father_name = father_name
    def print_father(self):
        print("부모 : "+ self.father_name)
 
class Child(Father):
    def __init__(self, name1, name2):
        super().__init__(name1)
        self.child_name = name2
    def print_child(self) :
        print("아이 : " + self.child_name)
    
father1 = Father("홍부모")
father1.print_father()
child1 = Child("최부모", "최아이")
child1.print_father()
child1.print_child()


 
