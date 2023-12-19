""" for x in range(5) :
    print("환영합니다.")
print(type(range(5)))

for name in ["철수","영희", "길동", "유신"] :
    print("안녕하세요. " + name)

for x in [1,2,3,4]    :
    print("또 안녕하세요")

s = ["박수", "김수", "이수", "정수", "한수"]
for name in s :
    print("반갑습니다. " + name + " 님!")

for x in [0,1,2,3,4,]    :
    print(x, end=" ")

hap = 0 
for x in range(10):
    hap += x
print("1~0까지의 누계합 :", hap )    

hap = 0
for x in range(0,10,1):
    hap += x
print("3. 0~9까지의 누계합 :" , hap) 
 """

# i = 0
# while i < 5 :
#     print("환영합니다.")
#     i = i +1

# print("반복이 종료되었습니다.")

""" hap = 0 
for x in range(10):
    hap += x
print("1. 0~9까지 누계합 :", hap )    

hap = 0
for x in range(0,10):
    hap += x
print("2. 0~9까지 누계합 :", hap)    

hap = 0
for x in range(0,10,1):
    hap = hap+x
print("3. 0~9까지 누계의 합 :" , hap)    

s ="Shin Eun Huck"
for Hu in s:
    print(Hu, end="")

n = 0
sum = 0
score =0

print("종료하려면 음수를 입력하시오.")

while score >= 0 :
      score = int(input("성적을 입력하시오.")) 
      if score > 0 :
       sum = sum + 1
       n = n + 1

if n > 0 :
    average = sum / n
print(f"성적의 평균은 {average}입니다. ")           

 """

""" for y in range(5) :
    for x in range(10) :
        print("*", end = " ")
    print("")    

char =(input("영문 소문자 하나를 입력하세요"))
if char == "a" or char == "e" or char == "i" or char == "o" or char == "u"  :
    print(f"{char}는 모음입니다.")
else :
    print(f"{char}는 자음입니다.") 

a = "apple"
b = a.upper()
print(b) """

""" s = input("문자열을 입력하시오.")
vowels = "aeiouAEIOU"
result = ""
for letter in s :
    if letter not in vowels :
        result += letter
print(result)        

 """

""" print("="*50)
print("^안녕하세요"*2)
now_year = int(input("현재년은?"))
now_month = int(input("현재월은?"))
now_day = int(input("현재일은?"))

birth_year = int(input("출생년은?"))
birth_month = int(input("출생월은?"))
birth_day = int(input("출생일은?"))

if birth_month < now_month :
    age = now_year - birth_year
elif birth_month == now_month :
     if birth_day < now_day :
        age = now_year - birth_year
     else :
         age = now_year - birth_year -1
else :
    age = now_year - birth_year -1

print("="*50)

print(f"오늘날짜 {now_year}년 {now_month}월 {now_day}일 ")
print(f"생년월일 {birth_year}년 {birth_month}월 {birth_day}일 ")
print("="*50)
print("^결과를볼게요"*2)
print(f"만 나이{age}세 입니다.")
print("="*50)
 """

""" 
spend = int(input("구매금액을 입력하세요?"))
if 10000< spend <= 50000 :
    rate = 5.0
elif 50000 < spend <= 1000000 :
    rate = 7.5
elif spend > 1000000 :
    rate = 10.0
else :
    rate = 0

discount = spend * rate / 100
pay = spend - discount

print(f"구매금액 {spend}원")
print(f"할인율 {rate}%")
#print("할인율 : %1.f" %rate)
print(f"할인금액 {discount}원")
print(f"지불금액 {pay}원")
 """

""" print("서비스 만족도")
print(" 1:매우만족")
print(" 2.만족")
print(" 3.불만족")
a = input("서비스 만족도는?(1/2/3)")
price = int(input("음식 값은?")) 

if a == "1" :
    tip = int(price*0.2)
    service = "매우 만족"
elif a == "2" :
    tip = int(price*0.1) 
    service = "만족"  
else :
    tip = 0
    service = "불만족"

print()
print(f"서비스 만족도 {service}이며 팁은 '{tip}원'입니다. ") """

""" userid = input("아이디는?")
if userid == "admin" :
    print("콘텐츠 이용이 가능합니다.")
else :
    level = int(input("회원 레벨은?(1~9)를 입력하세요"))
    if level ==  1 <= level <= 3 :
        print("콘텐츠 이용이 가능합니다.")
    else :
        print("콘텐츠를 이용할 수 없습니다.")    
"""
""" unit = input("단위를 입력해주세요. (1.섭씨 2.화씨)")
temp = int(input("온도를 입력해주세요."))

if unit == "2" :
    temp = (temp - 32) * 5/9
if temp <= 0 :
    state = "고체"    
elif 0 < temp < 100 :
    state = "액체"    
else :
    state = "기체"    

print(f"물의 섭씨 온도 : {temp}도 + 상태 : {state}입니다. ")     """

""" #E3-1
num = int(input("숫자를 입력하세요"))
if num > 10 :
    print(f"{num}은(는) 10보다 크다.")
else :
    print(f"{num}은(는) 10보다 작다.") """
        
""" #E3-2
num1 = int(input("첫 번째 수를 입력하세요"))    
num2 = int(input("두 번째 수를 입력하세요"))    

if num1 > num2 :
    print(f"{num1}이 {num2}보다 크다.")
elif num1 < num2 :
    print(f"{num1}이 {num2}보다 작다.")    
else :
    print(f"{num1}이 {num2}와(과) 같다.")      """   

""" #E-3-3
num = int(input("정수를 입력하세요 : "))
# 2로 나누어 나머지가 0...짝수이다.
if (num % 2) == 0:
    print("입력된 정수는 짝수입니다.")
else:
    print("입력된 정수는 홀수입니다.") """

""" #3-4
num1 = int(input("첫 번째 수를 입력하세요"))    
num2 = int(input("두 번째 수를 입력하세요"))  
num3 = num1 + num2 
if num3 % 3 == 0 :
    print(f"{num3}은(는) 3의 배수입니다.")
else :
    print(f"{num3}은(는) 3의 배수가 아닙니다.") """

""" #E-5
ageBasic = 35
age = int(input("당신의 나이는?"))
if age <= 35 :
    print(f"당신의 평균 나이는 ({ageBasic}세) 이하이다. ")
else :
    print(f"당신의 평균 나이는 ({ageBasic}세) 이상이다. ")     """

""" #3-6
num1 = int(input("수를 입력하시오."))
if 0< num1 < 10 :
    print(f"{num1}은(는) 한 자리 숫자이다.")
elif 10 <= num1 < 100   :
    print(f"{num1}은(는) 두 자리 숫자이다.")
elif 100 <= num1 <1000 :
    print(f"{num1}은(는) 세 자리 숫자이다.")
else :
    print(f"{num1}은(는) 범위(0~999) 이외의 숫자이다.") """

""" #E-7
 mun = input("문자열을 입력하세요")
strlength = len(mun) 
print(f"문자열의 개수 {strlength}")
if strlength % 2 == 0 :
    print("문자열의 개수는 짝수입니다.")
else :
    print("문자열의 개수는 홀수입니다.")    """

""" #3-9
point = int(input("점수를 입력하세요"))
if 90<= point <= 100  :
    grade = "수" 
    print(f"성적 : {point}점 등급 : {grade}")
elif 80 <= point < 90 :
    grade = "우"
    print(f"성적 : {point}점 등급 : {grade}")
elif 70 <= point < 80 :
    grade = "미"   
    print(f"성적 : {point}점 등급 : {grade}") 
elif 60 <= point < 70 :
    grade = "양"    
    print(f"성적 : {point}점 등급 : {grade}")
else :
    grade = "가"    
    print(f"성적 : {point}점 등급 : {grade}") """

""" #S3-1
grade = input("학점을 입력하세요 (A+, A, B+...F): ")
# 입력값을 대문자로 변환하여 처리
grade_upper = grade.upper()

# 등급에 따른 평점 매핑
if grade_upper == "A+":
    rating = 4.5
elif grade_upper == "A":
    rating = 4.0
elif grade_upper == "A-":
    rating = 3.7
elif grade_upper == "B+":
    rating = 3.5
elif grade_upper == "B":
    rating = 3.0
elif grade_upper == "B-":
    rating = 2.7
elif grade_upper == "C+":
    rating = 2.5
elif grade_upper == "C":
    rating = 2.0
elif grade_upper == "C-":
    rating = 1.7
elif grade_upper == "D+":
    rating = 1.5
elif grade_upper == "D":
    rating = 1.0
elif grade_upper == "F":
    rating = 0
else:
    rating = 0

# 결과 출력
print(f"등급: {grade_upper}, 평점: {rating}") """

""" #S3-3
기본_시간당_임금 = 12000
초과_근무_비율 = 1.5

# 사용자에게 정보 입력 받기
이름 = input("이름: ")
주당_근무_시간 = float(input("주당 근무 시간: "))

# 주급 계산
if 주당_근무_시간 <= 40:
    주급 = 기본_시간당_임금 * 주당_근무_시간
    초과_근무_시간 = 0
else:
    주급 = 기본_시간당_임금 * 40
    초과_근무_시간 = 주당_근무_시간 - 40

초과_근무_주급 = 초과_근무_비율 * 기본_시간당_임금 * 초과_근무_시간
주간_총_주급 = 주급 + 초과_근무_주급

# 결과 출력
print(f"시간당 임금은 {기본_시간당_임금}원이며, 40시간을 초과하는 근무는 1.5배로 계산됩니다.")
print(f"이름: {이름}")
print(f"주당 근무 시간: {주당_근무_시간} 시간")
print(f"초과 근무: {초과_근무_시간} 시간")
print(f"주간 주급: {주간_총_주급} 원") """

sum = 0
for i in range(100,200,5) :
  i = i + 1
print(i)  
