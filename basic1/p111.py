"""
start = int(input("시작 수는?"))
end = int(input("끝 수는?"))
num = int(input("정수를 입력하세요"))
#result = "%d은(는) %d~%d사이에 없다."%(num, start,end)
result =(f"{num}은는 {start}~{end} 사이에 없다.")

if  start<= num <= end :
  result =(f"{num}은는 {start}~{end} 사이에 있다.")
  print(result)
  """

#난수(규칙이 없는 수)를 구하기
# import random
# print(random.random() ) #0<=r <0
# print(random.randrange(1,7)) # 1<=랜덤수<7 주사위

# thinkNumber = random.randrange(1,31)
# ar = int(input("답은?")) #15
# if a1> thinkNumber :
#   result = "정답"
# elif a1< thinkNumber :
#   result = "답보다 큰 수 입니다."  
# else :
#   result = "답보다 작은 수입니다."    

import random
thinkNumber = random.randrange(1,31)
c = 0
# result = "정답입니다."
a1 = int(input("답은?")) #15
while  a1 != thinkNumber  : #정답을 찾을 때까지
    if a1 < thinkNumber :
      result = "답보다 큰 수입니다."
      c += 1
    else :
      result = "답보다 작은 수 입니다."  
      c += 1
    print(f"{result}")  
    a1 = int(input("답은?"))    
# result = "정답입니다"    
print(f"{c}번만에 찾았습니다.")
