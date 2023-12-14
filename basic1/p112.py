#3-2

# month = input("월을 숫자로 입력하세요.")
# if month == 3 or month == 4 or month == 5 :
#     print(f"{month}은 봄입니다.")
# if month == 6 or month == 7 or month == 8 :
#     print(f"{month}은 여름입니다.")  
# if month == 9 or month == 10 or month == 11 :
#     print(f"{month}은 가을입니다.")
# if month == 10 or month == 11 or month == 12 :
#     print(f"{month}은 겨울입니다.")

#3=3
# a = input("주민번호 뒷자리 첫번째 수자를 입력해주세요") 
# if a == 1 :
#     print("남성입니다.")
# if a == 2 :
#     print("여성입니다.")

#3-4
# char = input("영문 대문자 또는 소문자 하나를 입력하세요")        
# char2 = char.upper()
# if char2 == "A" or "E" or "O" or "U" :
#     print("%s->모음"%char)
# else :
#     print("%s->자음"%char)   

#3-5
# height = int(input("키는?")) 
# weight = int(input("몸무게는?"))

# s = (height -100) * 0.9

# print("="*50)
# print("키 :", height)
# print("몸무게 :", weight)

# if s > weight :
#   print("건강을 위해 다이어트가 필요합니다.")
# else :
#   print("표준 또는 마른 체형입니다.")

#3-6
print("아르바이트 급여 계산 프로그램")
print("※시급")
print("-주간근무 : 9500 ")
print("-야간근무 : 주간근무*1.5 ")
print()

hour_pay = 9500
a = int(input("1(주간근무) 또는 2(야간근무)을 입력해주세요 : "))
work_time = int(input("근무시간을 입력해주세요 : "))
if a == "1" :
  day_night = "주간" 
  pay = hour_pay * work_time
else :
  day_night = "야간"
  pay = hour_pay * work_time * 1.5

  print(f"{work_time}동안 일한 {day_night} 급여는 {pay} 입니다. ")