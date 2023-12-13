"""
from datetime import datetime



kor = input("국어 성적을 입력하세요.")
eng = input("영어 성적을 입력하세요.")
math = input("수학 성적을 입력하세요")

sum=int(kor)+int(eng)+int(math)
avg = sum/3
print("합계 : sum, 평균 : %.2f" %d )

"""
"""
#p82
price = 3000
num = 3
pay = 10000

change = pay - price * num
print("거스름돈 --> %d"%change)
print(f"거스름돈 --> {change}")
"""
"""
#83 탄생 년을 입력받아 나이계산하기
name = input("당신의 이름은?")
birth = int(input("태어난 해를 입력하시오."))
age = datetime.today().year-birth #현재년도를 구하는 프로그램...
print(f"{name}님의 나이는 {age}세 입니다.")
#print(datetime.today())
"""

#p86
"""
year = input("년은?")
month = input("월은?")
day = input("일은?")
print(year,month,day,sep=".")
"""

from datetime import datetime
year = datetime.today().year
month = datetime.today().month
day = datetime.today().day
weekday = datetime.today().weekday()
print(f"{year}년도 {month}달 {day}일")
print(datetime.today().weekday() )

if weekday == 0 :
      weekday = "월"
elif weekday == 1 :
      weekday = "화"
elif weekday == 2 :
      weekday = "수"
elif weekday == 3 :
      weekday = "목"
elif weekday == 4 :
      weekday = "금"
elif weekday == 5 :
      weekday = "토"
elif weekday == 6 :
      weekday = "일"

print(f"{weekday}요일입니다. ")    

#87
width = 10
height = 2
length = width*2 + height*2
area = width*height
print(f"사각형둘레는 {length}    ")
print(f" 사각형넓이 {area}  ")

#만약에 사각형의 넓이가 100 이상 큰사형이네요
#아니면 작은 사각형이네요

if (area >= 100) :
      print("큰사각형이네요")
else :       
      print("작은 사각형이네요")

# 넓이가 100<= 넓이 <=300 큰사각형
# 넓이가 50 <= 넓이 <=99  중간사각형
# 넓이가 0  <= 넓이 <=49  작은사각형      

if(100<=area<=300) :
  print("큰사각형")
elif(50<=area<=99) :   
  print("중간사각형")
else :
  print("작은사각형")
  

