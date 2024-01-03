class Employee :
    count = 0

    def __init__(self, name, position) :
        self.name = name
        self.position = position
        Employee.count = Employee.count + 1
        
    def show_info(self) :
        print("이름 : %s, 직위 : %s" % (self.name, self.position))

e1 = Employee("최진영", "대리")
e1.show_info()

e2 = Employee("김수정", "과장")
e2.show_info()

e3 = Employee("정선주", "부장")
e3.show_info()

print("총 직원 : ", Employee.count)
