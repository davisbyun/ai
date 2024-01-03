num1 = int(input("첫 번째 숫자를 입력하세요 : "))
num2 = int(input("두 번째 숫자를 입력하세요 : "))

print("원하는 연산은?")
x = input("+, -, *, / 중 하나를 선택하세요 : ")

if x == "+" :
    print("%d + %d = %d" % (num1, num2, num1+num2))
elif x == "-" :
    print("%d - %d = %d" % (num1, num2, num1-num2))
elif x == "*" :
    print("%d x %d = %d" % (num1, num2, num1*num2))
elif x == "/" :
    print("%d / %d = %.2f" % (num1, num2, num1/num2)) 
else :
    print("선택 오류!")
