#나이를 입력 받아서 65세 이상이면 티켓 값이 무료
#태어난 연도를 입력받으면 나이를 계산

from datetime import datetime
ticket = 2000
birth = int(input("태어난 년도"))

currentYear = datetime.today().year
age = currentYear - birth
if birth > currentYear :
  print(f"올해가 {currentYear}년입니다.") 
  print ("입력이 잘못되었네요." )
else :
  if age >= 65 or 0<= age <=10 : 
    ticket =0
  elif 40<= age <=60 :
    ticket =1000
  elif 30 <= age <=39 :  
    ticket =1500
  elif 20 <= age <=29 :    
    ticket =2000
  elif 11 <= age <=19 :  
    ticket = 2500

  print(f"당신의 나이는 {age} 입니다. ")
  print(f"입장료는 {ticket} 입니다. ")

# #조건문으로 나이가 65세 이상인지 판단
# #나이가 61 >= 0, 40~60 1000, 30~39 1500, 20~29 2000, 10~19 2500, 10이하 0원



# birth = int(input("나이를 입력하세요"))


# if age >= 61 or age < 10 : 
#   print("0원")
# elif 40>= age >=60 :
#   print("1000")  
# elif 30>= age >=39 :  
#   print("1500원")
# elif 20>= age >=29 :    
#   print("2000원")
# elif 10>= age >=19 :  
#  print("2500원")


  

