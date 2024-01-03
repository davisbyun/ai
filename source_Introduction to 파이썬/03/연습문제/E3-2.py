num1 = int(input("첫 번째 수를 입력하세요 : "))
num2 = int(input("두 번째 수를 입력하세요 : "))

if num1 > num2 :
    print("%d 은(는) %d 보다 크다." % (num1, num2))
elif num1 < num2 :
    print("%d 은(는) %d 보다 작다." % (num1, num2))
else :
    print("%d 은(는) %d 와(과) 같다." % (num1, num2))
