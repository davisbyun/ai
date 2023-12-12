#문자열 연산자
"""
x = "토끼"*10
print(x)

date = "20220301"
year = date[0:4]
month = date[4:6]
day = date[6:]
date2=year + "-" + month + "-" + day
print(date2)

x="가는 말이 고와야 오는 말이 곱다."
n= len(x)
print("문자열의길이: " ,str(n) )

x="말 한마디로 천냥 빚을 갚는다."
print(len(x))

animal = "고양이"
age =25
score = 12.55
x ="나는 %s를 좋아하는 %d살 포인트 점수는 %.1f입니다." %(animal, age, score) #소수점 %.1f 반올림됨
print(x) 

y ="ab"
x = "%s"%y  #%c는 한글자 %s는 한글자 이상

y = 8
x = "%o"%y #8진수구한다.
print(x)

y = 15
x = "%x"%y #16진수구한다.
print(x)

# %s, %c, %d, %f, %o, %x

# 키보드 입력 자바는 Scanner sc = new Scanner(System.in) \
# input

name = input("이름을 입력하세요")
print("%s 이름입니다."%name)

score = input("점수는") #str
print(type(score))
print("%d점입니다."%(int)(score))


score = (float) (input("점수는") )  #str
print(type(score))
print("%d점입니다."%(int)(score))

#실수 반지름 12.5789를 입력받아서 원넓이(반지름*반지름*3.14)
radius = (float) (input("반지름은?"))
area = radius * radius *3.14
print("%.3f원넓이"%area)
#r=12.5789

name = "홍지영"
a =10
b= 20
print(name, a, b, a-b, 100, sep="/")

name = "지영"
a =110
b= 210
print(name, a, b, a-b, 100, sep="")

#76 널이란? 값이 없는 것 ()"" 따옴표내 공간이 없는 것) = null   참고 (" "(공백))
print("문자열에는 문자 앞 뒤에 쌍따옴표(\")를 \n 붙인다.")
"""
score = (float) (input("점수는") )  #str
print(type(score))
print("%d점입니다."%(float85)(score))





