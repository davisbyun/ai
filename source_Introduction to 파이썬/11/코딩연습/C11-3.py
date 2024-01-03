class Calculator :
    def __init__(self, num1, num2) :
        self.num1 = num1
        self.num2 = num2
    
    def add(self) :
        result = self.num1 + self.num2
        print("%d + %d = %d" % (self.num1, self.num2, result))
    def sub(self) :
        result = self.num1 - self.num2
        print("%d - %d = %d" % (self.num1, self.num2, result))
    def mul(self) :
        result = self.num1 * self.num2
        print("%d x %d = %d" % (self.num1, self.num2, result))
    def div(self) :
        result = self.num1 / self.num2
        print("%d / %d = %.2f" % (self.num1, self.num2, result))

a = int(input("첫번째 수를 입력하세요 : "))
b = int(input("두번째 수를 입력하세요 : "))

cal1 = Calculator(a, b)
cal1.add()
cal1.sub()
cal1.mul()
cal1.div()
