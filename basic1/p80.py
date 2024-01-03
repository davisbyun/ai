# 3번 문제 풀기  %d
"""
# 81page
price = 3000
num = 3
pay = 10000
change = pay - price * num
print("거스름돈 --> %d"%change)
print(f"거스름돈 --> {change}")


from datetime import datetime

print(  datetime.today().year  ) # 현재년도

# 83 탄생년을 입력받아 나이계산하기
name = input("이름은?")
birth = int(input("년도?"))  # "2005" - int -> 2005
age = datetime.today().year - birth 
print(f"{name}님의 나이는 {age}세입니다")

"""

# 86페이지 문제 풀어 보기
# year = input("년은?")
# month = input("월은")
# day = input("일은")

from datetime import datetime

year  = datetime.today().year
month = datetime.today().month
day = datetime.today().day
weekday = datetime.today().weekday()
print( year, month, day, weekday, sep=".")

if weekday == 0 :
   weekdayHan = "월"
elif weekday == 1 :
   weekdayHan = "화"
elif weekday == 2 :
   weekdayHan = "수"
elif weekday == 3 :
   weekdayHan = "목"
elif weekday == 4 :
   weekdayHan = "금"         
elif weekday == 5 :
   weekdayHan = "토"   
elif weekday == 6 :
   weekdayHan = "일"   
print( f"{weekdayHan}요일입니다")

# 확장 하기
# 오늘 요일 구하기 - 숫자로 구해짐
# 월요일 0 화요일 1 수요일 2 ... 일요일은 6이 됨
# 출력화면 2 수요일이 나오게 하기 

# 87
width = 10
height = 1
length = width * 2 + height * 2 #사각형 둘레
area = width * height # 사각형 넓이
print(f"사각형 둘레는 {length}")
print(f"사각형 넓이 {area}")

# 만약에 사각형의 넓이가 100이 넘으면 큰 사각형이네요
# 아니면 작은 사각형이네요 라고 출력하기
if area >= 100 :
   print("큰사각형이네요")
else :
   print("작은사각형이네요")

# 넓이가 100<= 넓이 <= 300 큰사각형
#       50 <= 넓이 <=99  중간사각형
#       0 <= 넓이 <= 49 작은사각형
if 100 <= area <= 300 :
   print("큰사각형")
elif  50 <= area <= 99 :
   print("중간사각형")
else :
   print("작은사각형")