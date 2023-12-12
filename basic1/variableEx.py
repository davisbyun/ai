#변수연습
_name = "홍길동"
name = "김길동"
_name = "다른변수"
## 1name = 에러
print(_name)
print(type(_name)) ##type함수는 자료형을 보여줌
number = 10
print(type((number)))
pi= 3.14
ok= True
print(type(pi))
print(type(ok))
number = "백점"
print(type(number))

#사직연산
str1 ="abc"
str2 ="def"
print(str1+str2) ##연속해서 출력하라
#print(str1+str2)
#print(str1*str2)
print(str1*3) ##문자를 세번 반복하라
##print(str1/str2)
str3 = str1+str2
print(str3)

number=1; number2=2; number3=3 
number4 = number + number2
number5 = number2 * number3
number6 = number2**number3
number7 = number3 / number2
number8 = number3 % number2
print(number,number2,number3, sep="--")
print(number4,number5,number6, sep="--")
print(number7,number8, sep="--")

ok = True #1
ok2 = False #0 
ok3 = ok+ok2 #or연산 -->True -->1
ok4 = ok-ok2 #
ok5 = ok*ok2 #and연산 -->False -->2
#ok6 = ok/ok2 
print(ok,ok2,ok3,ok4,ok5,sep=">>")

print(-26.35+9.7*(-21))
print(3/5)
a=100/35
print(a)
print("%.1f"%a) #소숫점1자리출력
b=100//35 #소수점아래를버려라.
print(b)

s="안녕하세요. 반갑습니다."
print(s[0])
print(s[7])
print(s[3:5]) # 3 <= index number <5
#print(a[:6])  # 0 <= index number <5
print(s[6:])  # 6 <= index number <끝까지
print(s[:])   # 0 <= index number <끝까지

jumin = "041225-4098745"
#성별 4
#생일 2006년 12월 25일
sex = jumin[7:8] 
year = jumin[0:2]
month = jumin[2:4]
day = jumin[4:6]
print("20",year, "년",month, "월", day, "일",sep="")
print(len(jumin)) #문자열의 길이를 구하는 함수 len()

a=100
# print(len(a)) 숫자에는 len() 사용 못함

print("-"*100) #줄글때쓰라구

a=100
b="abc"
c=(str)(a)+b  # "100"+"abc"
print(type(c))
print(c)

a="100"
b="200"
c=a+b
print(c) # 100200

c=(int)(a)+(int)(b) #숫자로 강제형변환
print(c)