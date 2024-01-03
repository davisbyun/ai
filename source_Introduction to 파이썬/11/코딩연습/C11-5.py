class Rectangle():
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def length(self) :
        print("사각형 둘레 :", self.width*2 + self.height*2)
    
    def area(self):
        print("직사각형 면적 :", self.width * self.hegiht)

class Square(Rectangle):
    def __init__(self, a):
        super().__init__(a, a)
        
    def area(self):
        print("정사각형 면적 :", pow(self.width, 2))

s = Square(10)
s.length()
s.area()
