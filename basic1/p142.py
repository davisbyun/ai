""" # for문, while문

#for x in range(1,11,2) :
#  print(x, end=" ")

#5,10 ---100
for x in range(100, 4,-5) :
  print(x, end=" ") """

""" #문제
#시작수? 3
#마지막수? 100
# 증가수? 2
#3,5,7,9...99    
  
start = int(input("시작수를 입력하세요")) 
stop = int(input("마지막 수를 입력하세요"))
increase = int(input("증가수"))

for a in range(start, stop, increase) :

  print(a) """

""" #1~100까지 합
  
sum = 0  
sumsum = 0
for x in range(1,101,1)  :
  sum = sum+x
  sumsum = sumsum + sum
  print(sum)
  print(sumsum)

#합계의 합계변수
#sumsum = 1, 1+(1+2), 1+(1+2)+(1+2+3) """

""" #p.146
  
for x in range(10) :
  print(x, end=" ")

for x in range(1,11) :
  print(x, end=" ")

for x in range(1,10,2) :   
  print(x, end=" ")

for x in range(20, 0, -2) :
  print(x, end=" ") """

"""   #2024년도 1월 1일부터 2024년 1월 31일까지 출력하기

year = 2024
month = 1
day = 1

for day in range(1,32) :
    print(year, month,day, sep= "/") """

#1~100 합 3000이 넘으면 아웃, 77까지 더하면 3003임

""" sum = 0
for x in range(1,101) :
  sum = sum + x
  if sum >= 3000:
    break

print(sum, x)

#100~1000까지 5씩 증가해서 합계 구하기, 5000넘으면 멈추고 합계
sum = 0
for x in range(100,10001,5) :
  sum += x
  if sum >= 5000:
    break

print(sum, x) """


""" for x in "abcdefg" :
  print(x, end=" ")

for x in "this is python" :
  print(x, end=" ")

count = 0 
for x in "this is python " :
    if x == 't' :
      count += 1
print(f"t의 갯수는 {count}개입니다.")

count =0
for x in "this is python " :
    if x == 's' or x == 'i' :
      count += 1
print(f"s이거나 i의 갯수는 {count}개입니다.")   

count =0
for x in "this is python " :
    if x == ' ':
      count += 1
print(f"공백의 갯수는 {count}개입니다.")   
 """


""" for i in range(1,10) : #1~9
  for j in range(2,10) : #2~9
  #print( f"{i} x {j} = {i*j} " end=", ")
     print( "%2dX%2d=%2d "%( j, i, j*i), end=" ")
  print()  
 """

""" 
for i in range(2,10) : #2~9
  for j in range(1,10) : #1~9
  #print( f"{i} x {j} = {i*j} " end=", ")
     print( "%2dX%2d=%2d "%( i, j, j*i), end=" ")
  print()  


for i in range(1,10) :
   for j in range(1, i+1) :
      print("*", end="")      
   print()
 """

""" for i in range(1,11) :      # 1 - 
   for j in range(i,11) :   #  
      print("*", end="")      
   print()

for i in range(1,6) :         #1,2,3,4,5
   for j in range(1, 6-i) :   #5,4
      print(" ", end="")      #공백을 찍기
   for k in range(1, 2*i) :   #2,4,6,8,10
      print("*", end="")
   print()       """

""" print("-"*30)
print(" 섭씨, 화씨")
print("-"*30)

for c in range(-20, 31, 5):
  f = c*9.0 /5.0 +32.0
  print("%5d %6.1f" %(c,f) )
  
  print("-"*30)
 """

""" count =0
for i in range(200, 801) :
  if i % 5 != 0 :
    print("%d"% i, end=" ")
    count = count +1

    if count % 10 == 0 :
      print() """

""" print("-"*40)
print("cm    mm    m   inch")
print("-"*40)

for cm in range(1, 100, 1) :
  mm = cm * 10.0
  m = cm * 0.01
  inch = cm * 0.3937
  #print(f"{cm} {mm}  {m} {inch}  ")
  print("%2d   %2d   %2.1f   %2.1f " %(cm, mm, m, inch )   )
  print("-"*40) """

""" 
#4-5
number = input("숫자를 입력하세요")

total = 0
for a in number :
  a - int(a)
  if a%2 != 0:
     total += 1
print("홀수의 개수 :  %d개 "%total )


print("-"*50)
print("%7s %7s %7s" % ("킬로그램", "파운드", "온스" ))
print("-"*50)

for kg in range(100,200,2) :
  pound = kg * 2.204623
  ounce = kg * 35.273962
  print(" %9d    %9.1f   %9.1f" %(kg, pound, ounce) )  
 """

""" for i in range(1,6) :
  for j in range(1,11) :
      print("*", end=" ")
  print()    """ 

for i in range(9, 0,-1)  : #99999999
  for j in range(0, i, -1) :
    print(i, end=" ")
  print()
  