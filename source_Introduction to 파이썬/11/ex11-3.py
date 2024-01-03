class Cat :
    kor_name = "로키"
    eng_name = "rocky"
    age = 2

    def sound(self) :
        print("야옹~~~")

    def speed(self) :
        print("엄청 빠르다!")

mycat = Cat()

print("한글 이름 :", mycat.kor_name)
print("영어 이름 :", mycat.eng_name)
print("나이 :", mycat.age)
mycat.sound()
mycat.speed()

        
    
