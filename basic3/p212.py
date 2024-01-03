# 2차원 리스트
numbers = [ [10,20,30],[40,50,60],[60,70,80], ['a', [100,90] ]  ]
print( numbers[0][0])
print( numbers[1][2])
# 80 
print( numbers[2][2])
# 'a'
print( numbers[3][0])
# 100 
print(numbers[3][1][0])

boards = [[1, "작성자1", "내용1"],[ 2, "작성자2", "내용2" ],[ 3, "작성자3", "내용3"]]
# 내용 전부 출력하기 
# [0][0] [0][1] [0][2]   [1][0] [1][1] [1][2]    [2][0] [2][1] [2][2]
for i in range(0, len( boards ) ) : # 0 1 2 
    for j in range( 0, len( boards[i]) ) :
        print( boards[i][j], end=" " )
    print() 

# 문1) 내용을 모두 출력하기
jumsu = [ [10,20], [30,40,50], [60]   ]
# 생각 10을 출력하려면 [0][0], 20을 출력하려면 [0][1]                
# [0][0]  [0][1]   [1][0] [1][1]  [1][2]  [2][0] 
for i in range( 0, len( jumsu ) ) :       # 0 1 2 
    for j in range( 0, len( jumsu[i]) ) : # 2 3 1 
        print( jumsu[i][j], end=" ")
    print()

# 문2) 문1의 합 구하기 
sm = 0    
for i in range( 0, len( jumsu ) ) :       # 0 1 2 
    for j in range( 0, len( jumsu[i]) ) : # 2 3 1 
        sm = sm + jumsu[i][j]
print( sm ) # 210
# 문3) sum() 함수를 이용해서 구하기
# a = [1,2,3]
# print( sum(a) )
jumsu = [ [10,20], [30,40,50], [60]   ]
print( sum( jumsu[0] ) ) # [10,20]의 합이 나온다
print( sum( jumsu[1] ) )
# print( sum( jumsu )) # 에러 발생

sm = sum( jumsu[0] ) + sum(jumsu[1]) + sum(jumsu[2])
print( sm )

# for문 이용해서 전체 합을 구하기
sm = 0
for i in range( 0, len(jumsu) ) :
    sm += sum( jumsu[i] )
print( sm )    

# 217쪽
strings = [ ["원두커피", "라떼", "콜라"], ["우동","국수","피자", "파스타"] ]
# "국수" 출력
print( strings[1][1])
# "피자", "파스타" 삭제하기
strings[1].remove("피자")
strings[1].remove("파스타")
# "원두커피" 치환하기 "아메리카노"
# strings[0][0] = "아메리카노"
# 생각 "원두커피"의 인덱스를 찾아서 해당 인덱스를 수정한다
# "원두커피"의 인덱스를 찾아서
strings = [ ["원두커피", "라떼", "콜라"], ["우동","국수","피자", "파스타"] ]

findColumIndex = strings[0].index("원두커피")
strings[ 0 ][ findColumIndex ]   = "아메리카노"

print( strings[0] )
print( strings[1] )

# join() 리스트 --> "문자열" 
# "문자열" replace하기 
strings = [ ["원두커피", "라떼", "콜라"], ["우동","국수","피자", "파스타"] ]
s1 = " ".join( strings[0])
print( s1 )

# 222 리스트로 영화관 예약 가능 좌석
# ver 1.0 교재에 있는 것 풀기
seats = [[ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0],\
         [ 0,0,0,0,0,0,0,0,0,0]]

for i in  range( 0, len( seats )):
    print("%d행"%i, end=" ")
    for j in  range( 0, len( seats[i] )):
        if seats[i][j] == 0:
            print("%3s" % "□", end="")
    print()

seatsCount = int( input( "몇 좌석을 예약하시겠습니까?") ) # 예 3
count = 1 #한 좌석 예약할 때마다 증가 변수
while count <= seatsCount  :
    row = int(input("좌석예약하기 행을 입력하기"))
    colum =  int(input("좌석예약하기 열을 입력하기"))
    seats[ row ][colum ] = 1
    count += 1
    for i in  range( 0, len( seats )):
        print("%d행"%i, end=" ")
        for j in  range( 0, len( seats[i] )):
            if seats[i][j] == 0:
                print("%3s" % "□", end="")
            else :
                print("%3s" % "■", end="")    
        print()

# 좌석을 몇개 예약하시겠습니까? 3 
# 그러면 3번 반복하여 행열 입력 받게 하세요.    
# 224쪽 연습문제 5장 풀어 보세요
         




             






        