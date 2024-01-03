for i in range( 10 ) : # 0~9까지
    print(i, end=" ")
print( "-"*10)
for i in range( 1, 11 ) : # 1~10까지
    print(i, end=" ")
print("-" * 30)    
for i in range( 11, 0, -1) :
    print(i, end=" ")
print("-" * 30) 
for i in "I love you!" :
    print( i, end="" )    
sum =0
j = 1    
while True :
    if sum >= 50 :
        break
    else :
        j += 1
        sum += j
print( j, sum ) 

# 178 4-6
# 10! = 1 X 2 X 3 .. X 10
fac = 1
for i in range(1, 11 ) :
    fac = fac * i
print( fac )

#심화문제 4-1
# 1단계 1~1000까지 출력하기 
for i in range(1, 1001) :
    print(i, end=" ")
# 2단계 3의 배수가 아닌 것만 출력
# 3의 배수는 9 % 3 == 0
# 3의 배수가 아닌 것 8 % 3 != 0    
for i in range(1, 1001) :
    if i % 3 != 0 :
        print(i, end=" ") 
# 3단계 한줄에 10개씩 출력
count = 0                           
for i in range(1, 1001) :
    if count == 10 :
        print() # 줄바꾸기
        count = 0
    if i % 3 != 0 :
        print(i, end=" ")
        count += 1

# while문
i=1 # 1 2 3 ... 1000
count = 0 # 한줄에 10개출력 
while i<=1000 :
    if count == 10 :
        print()
        count = 0
    if i % 3 != 0 :
        print( i, end=" ")
        count += 1
    i += 1
"""
# 4-2 성적을 입력받아 등급 판정하기 'q'를 입력하면 프로그램 종료
con = "y"
while con == "y" : 
    jumsu = int( input("성적을 입력하세요") )
    if 90 <= jumsu <= 100 :
        result = "수"
    elif 80 <= jumsu <= 89 :
        result = "우"   
    elif 70 <= jumsu <= 79 :
        result = "미" 
    elif 60 <= jumsu <= 69 :
        result = "양" 
    elif 0 <= jumsu <= 59 :
        result = "가"
    print( f"등급 : {result}")
    con=input("계속하시겠습니까?(중단:q, 계속:y)")


# 4-3 
# 1단계 시작수 입력받고 끝 수 입력받기    힌트 input()
start = int( input("시작 수를 입력해주세요:") )   
end = int(input("끝 수를 입력해주세요 :"))
# 2단계 시작수~끝수 전체 출력하기
for i in range( start, end+1) :
    print( i, end=" ")
# 3단계 시작수~끝수 소수를 출력하기 
# 30 소수판단하기  30 % 2 == 0 소수아님
x=True    
for i in range( 2, 31 ) :
    if 31 % i == 0 :
        x = False 
        break
if x :
    print( f"{31}은 소수이다") 
"""

# 소수만 출력하기

start = int( input("시작 수를 입력해주세요:") )   
end = int(input("끝 수를 입력해주세요 :"))    
x=True #소수인 경우는 True로 아닌 경우 False로    
for i in range( start, end+1) : # start 30 end 80
    x = True
    for j in range( 2, i) : # 2~29까지 나누어 본다
        if i % j == 0 :
            x = False
            break # 한단계 반복문 밖으로 나간다. 즉 for j에서 밖으로 
    if x :
        print( i, end=" ")