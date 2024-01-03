# 정답 : ① __init__   ② c1.add()
class Calculator :
    def __init__(self, a, b) :
        self.a = a
        self.b = b
        
    def add(self) :
        return self.a + self.b

c1 = Calculator(10, 20)
print(c1.add())

 
