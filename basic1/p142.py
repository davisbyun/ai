# for문, while문
for x in range(1,11,2) :
    print(x)
# 5 10 ... 95 100
for x in range( 5, 101, 5) :
    print( x )
# 100 95  90 ... 5
for x in range( 100, 4, -5) :
    print( x )
# 문제
# 시작수? 3
# 마지막수? 100
# 증가수? 2
# 결과화면
# 3 5 7 9 ... 99 
# start = int( input("시작수?"))                                   
# stop = int( input("마지막수?"))
# increae = int( input("증가수?"))
# for x in range( start, stop, increae) :
#     print(x)

# 1~100까지합 
# 변수 1,2,3,4,...100 
# 합계변수 1, 1+2, 1+2+3, 1+2+3+4 .... sum = sum + x    
sum = 0
sumsum = 0
for x in range( 1, 101, 1) : # x =1,  2, 3
    sum = sum + x            # 0+1, 1+2, 1+2+3
    sumsum = sumsum + sum    # 0 + 0+1, 1+1+2, 1+1+2 + 1+2+3
print( sum )    
print(sumsum)
# 합계의 합계변수
# sumsum = 1, 1 + (1+2), 1 + (1+2) + (1+2+3), 

# 146page
for x in range( 10 ) : # 0~9  종료값
    print(x)
for x in range( 1,11) : # 1~10
    print(x)    
for x in range(1,10,2) : # 1 3 5 7 9
    print(x)    
for x in range(20, 0, -2) : # 20 18 16 ... 2
    print(x)    

# 2024년도 1월 1일부터 2024년 1월 31일까지 출력하기
# 2024 / 1 / 1
# 2024 / 1 / 2
year = 2024
month = 1
day = 1
for day in range( 1, 32 ) :
    print( year, month, day, sep="/")
    print()

# 1~100까지 합계구하기 3000넘어가면 멈추고 합계 출력하기
sum = 0
for x in range(1, 101) :
    sum += x
    if sum >= 3000 :
        break
print( sum, x ) 
# 100~10000까지 5씩 증가해서 합계구하기 5000이상이면 멈추고 합계
sum = 0
for x in range( 100, 10001, 5) :
    sum += x
    if sum >= 5000 :
        break
print( sum, x )
# 문자열 for문
for x in "abcdefg" :
    print( x )

# 't' 몇개인가요?    
count = 0    
for x in " this is python " :
    print( x )
    if x == "t" :
        count += 1
print( f"t의 갯수는 {count}개 입니다")

# 공백이 몇개인가요?
count = 0    
for x in " this is python " :
    print( x )
    if x == " " :
        count += 1
print( f"공백의 갯수는 {count}개 입니다")
# "s"이거나 "i"인게 몇개인가요?    
count = 0    
for x in " this is python " :
    print( x )
    if x == "s" or x =="i" :
        count += 1
print( f" 's'이거나 'i'의 갯수는 {count}개 입니다 ")
# 이중 for문 - 구구단 출력
for i in range(1, 10) : # 1~9
    for j in range(2,10) : # 2~9
      #  print( f"{j} X {i} = {j*i}", end=",  "   )
        print( "%2dX%2d=%2d "%( j, i, j*i), end=" ")
    print()
# 구구단 출력하기
# 행의 반복-밖에 for, 열의 반복-안에 for
for i in range(2, 10) :
    for j in range( 1, 10) :
          print("%2dX%2d=%2d"%(i, j, i*j), end=" ")      
    print()
# 156쪽
# 1행 1번, 2행 2번, 3행 3번
for  i in range(1, 10) :
    for j in range(1, i+1)    : # 1행 2 2행 3 3행 4
        print("*", end="")
    print()             

for i in range(1,10) :
    print( "*" * i)

# 157쪽 
# 행은 10번 열은 1행일때 10열 2행일때 9열 3행일때 8열 ...
for i in range(1,11): # 1행~10행
    for j in range( i, 11 ) :  # 1~10, 2~10, 3~10
        print("*", end="")
    print()

for i in range( 10, 0, -1) :
    print( "*" * i)

for i in range(1, 6) :        # 1,2,3,4,5
    for j in range(1, 6-i ) : # 5,4 
        print(" ", end="") # 공백 출력
    for k in range(1, 2*i) :  # 2,4,6,8,10 
        print("*", end="")
    print()
# 교재에 있는 실습과 문제 풀면서 반복문 익히기    
# 152
# 154 C4-1, C4-2, C4-5, C4-6, C4-7, C4-8
# 4-5
"""
number = input("숫자를 입력하세요") # "477569040"
total = 0
for   a  in number       :
   a = int(a) # "4" -int()-> 4
   if   a % 2 != 0      :
        total += 1
print("홀수의 개수 : %d개 "% total)

"""    
# 4-7
for i in  range(1, 6)   : # 행
    for j in range(1,11)   : # 열
        print("*", end=" ")
    print()    

# 4-8
for i in  range(9, 0 ,-1)  :   # 9,      8
    for j in range(0, i ,1) :  # 9번반복, 8번반복
        print(i, end=" ")   # 999999999, 88888888 
    print()
    



        
        


        




# 이중 for문 예제  * 출력하기