import math

class Circle :
    def __init__(self, r) :
        self.r = r
    
    def get_area(self) :
        result = math.pi * self.r * self.r
        return result

radius = float(input("반지름을 입력하세요 : "))
        
circle1 = Circle(radius)

print('반지름: %d' % radius)
print('원의 면적 : %.2f' % circle1.get_area())
