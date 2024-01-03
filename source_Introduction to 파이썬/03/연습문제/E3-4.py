num1 = int(input("첫 번째 숫자를 입력하세요 : "))
num2 = int(input("두 번째 숫자를 입력하세요 : "))

x = num1 + num2

print("%d + %d = %d" % (num1, num2, x))

if x%3 == 0 :
    print("%d은(는) 3의 배수이다." % x)
else :
    print("%d은(는) 3의 배수가 아니다." % x)
