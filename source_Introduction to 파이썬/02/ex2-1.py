name = input("당신의 이름은? ")  
birth = int(input("당신이 태어난 해는? "))

age = 2021 - birth + 1
print("%s님의 나이는 %d세 입니다." % (name, age))
