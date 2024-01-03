class Ladder :
    def __init__(self, a, b, height) :
        self.a = a
        self.b = b
        self.height = height
        
    def area(self) :
        return (self.a+self.b)/2 * self.height

w1 = int(input("사다리꼴 밑변의 길이를 입력하세요 : "))
w2 = int(input("윗변의 길이를 입력하세요 : "))
h = int(input("높이를 입력하세요 : "))

ladder1 = Ladder(w1, w2, h)
print("사다리꼴의 면적 : %.2f" % ladder1.area())

 
