#p.98부터
"""
x =int(input("정수를 입력하세요"))
if x > 0 :
  print("양수")
  print(f"{x}")  
"""

x =10
y= -5
if not x >= 0 :
  print("두개 다 양수")
  print(f"{x} {y}")

xx=10
print(xx%2 == 0 or xx % 3 ==0)

a=5
b=7
c=a+b
c == 12
print(c == 12)

hobby1 = "영화감상"
hobby2 = "수영"
my_hobby = "독서"
print( my_hobby == hobby1 or my_hobby == hobby2 )

pilgi = 90
silgi = 70

if pilgi >=80 and silgi >= 80 :
    print("합격")  
else :
    print("불합격")    

#월을 입력 받아서 1,2,3월이면 1사분기, 4,5,6이면 2사분기, 7,8,9이면 3사분기, 10,11,12이면 4사분기

month = int(input("월"))
if month < 0 or month >13 :
   print("잘못된 달입니다.")  
   #에러를 먼저 처리하면 프로그램의 부하를 줄이고 프로그램도 훌륭하다.
if 1<= month <= 3 :
   print("1사분기")
elif 4<= month <= 6 :
   print("2사분기")    
elif 7<= month <= 9 :
   print("3사분기")  
elif 10<= month <= 12 :
   print("4사분기")    
# else :
#    print("잘못된 달입니다.")   








