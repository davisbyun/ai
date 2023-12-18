# while문
# 형식 while조건문 :
#     조건이 참이면 반복할 내용
#   조건이 거짓이면 수행할 내용

#1~100까지 합

""" i=1
sum = 0

while i <= 100 :
  sum += i
  i += 1
print(sum) """

""" #500~200까지의 합
i=500
sum = 0

while i >= 200 :
  sum += i
  i -= 1
print(sum)   """

#500~1000까지 합 7개씩 증가하면서 합과 평균 구하기
#평균을 구하려면 개수를 구해야 한다.

i = 500
sum = 0
count = 0

while i <= 1000 :
   sum += i
   i += 7
   count += 1

print("갯수 %d" %count)   
print("합계 %d" %sum )
print("평균 %.2f" %(sum/count) )

#1~50까지 출력하다가 합이 3000이 넘으면 멈추기

""" i=1
sum =0

while True :
    print(i, end=" ")   
    sum += i
    i += 1
    if sum >= 3000 :
        break
print(sum    ) """
    
i=1
sum =0

while True :
    i += 1
    if i % 5 != 0:
      continue 
    if i
    print(i, end=" ")   
    sum += i
    i += 1

print(sum    )    


