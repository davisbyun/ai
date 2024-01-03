class Triangle :
    def __init__(self, width, height) :
        self.width = width
        self.height = height
        
    def area(self) :
        return (self.width * self.height)/2

w = int(input("삼각형 밑변의 길이를 입력하세요 : "))
h = int(input("높이를 입력하세요 : "))

t1 = Triangle(w, h)
print("삼각형의 면적 : %.2f" % t1.area())

 
