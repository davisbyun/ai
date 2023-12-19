""" #178 4-6

#10! 

for i in range(10) : #0~9
  print(i, end=" ")

print("-"*20)

for i in range(1,11) : #1~10 ==> 1 <= i < 11
  print(i, end=" ")  

print("-"*20)

for i in range(11,0,-1) : #10~1
   print(i, end=" ")  

for i in "I love you!" :
   print(i,end="")  

   
sum = 0
j = 1
while True :
   if sum >= 50 :
      break
   else :
      j += 1
      sum += j

print(j, sum)


#178 4-6

fac = 1
for i in range(1,11) : #증가치 1은 생략가능
   fac = fac * i
print(fac) """

""" sum = 0
count = 0

while i <= 1000 :
   if i % 3 != 0 :
      i += 1
      sum += 1
print(sum)       """

""" 
count = 0
#1~1000
for i in range(1,1001) : 
    if count == 10 :
       print()
       count = 0

#3의베수가 아닌 것
    if i % 3 != 0 :
       print(i, end=" ")
       count += 1
 
#1줄에 10씩     

#while문

i = 1
count = 0 #한줄에 10개
while i <= 1000 :
   if count == 10 :
      print()
      count = 0
   if i % 3 != 0 :
      print(i, end=" ")       
      count += 1 #한줄에 10개 i값 증가
   i += 1
print(i)
   

con = "y"
while con == "y" :
   jumsu = int(input("성적을 입력하세요."))
   if 90 <= jumsu <= 100 :
      result = "수" 
   elif 80 <= jumsu <= 89 :      
      result = "우" 
   elif 70 <= jumsu <= 79 :      
      result = "미" 
   elif 60 <= jumsu <= 69 :      
      result = "양"    
   elif 50 <= jumsu <= 59 :      
      result = "가"    

   print (f"등급 : {result}  ") 
   con = input("계속하시겠습니까?(중단:q, 계속:y)")
 """

#p.179 4-3번
#소수출력
x = True
start = int(input("시작 수를 입력해주세요"))   #30
end = int(input("끝 수를 입력해주세요"))       #80
x = True #소수인 경우는 true 아닌 경우는 false
for i in range(start, end+1) : #30~80
    x = True                                 # 선언하지 않으면 아래 for문 값이 그냥 통과
    for j in range(2, i) : #2~29
        if i % j == 0 :
         x = False 
         break                               # 한단계 반복문 밖으로 나간다. <for j>에서 빠짐 ==> 아래 if로 이동
    if x :
        print(i, end=" ")     

    #print(f"{i}은(는) 소수이다.")    
            