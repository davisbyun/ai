# 상속 : 부모 클래스의 맴버들을 자식이 모두 쓸 수 있는 것
# class A {
# }
# class AA extends A {
# }

class A :
    def aM(self, x) :
        print(x)

class AA (A) :
    def aM(self, x) :
        print("나는 자식 메소드 오버라이딩", x*x )
a = A()
print(a.aM(10))        
aa = AA()
print(aa.aM(10))
a1 = AA()
