# 함수
# 용도는? 역할(기능)을 담당 것, 기능을 만들어 두고 필요할 때마다 사용함
# 사용법은?  만들기->호출해서 사용 
def hello(): # 사용자 정의 함수 만들기
    print("Hi!")
def goodMorning():
    print("Good Morning")

goodMorning()    
hello() # 호출
goodMorning() 
# 함수의 종류
# 내장함수 - 파이썬 미리 만들어 둔 것
# 사용자정의 함수 - 프로그래머가 만들어 주는 함수
# 요구사항 
# 안녕! 현희야, 안녕! 길동야, 안녕! 민수야
def hi( name  ) : # 매개변수
    print(f"안녕!  {name}야")

hi("현희") # 매개변수에 들어갈 값 : 실인수 Arguments
hi("길동")
hi("민수")
# 나는 현희야 키가 160이야,  나는 길동야 키가 180이야
# 나는 민수야 키가 170이야
def height( name, height) :
    print( f"나는 {name}야, 키는 {height}이야 ")
height( "현희", 160)
height( "길동", 180)
height( "민수", 170)    
# 여러개 매개변수인 경우(가변인 경우)
def average(*args) :
    print(type(args))
    print( args )
    num_args = len(args) # 실인수의 갯수가 나온다
    sum = 0
    for i in args :
        sum = sum + i
    avg = sum / num_args 
    print(f"평균은 {avg}")   

average(85,96,87)
average(85,96,87,97,72)
average(5,78)

# 함수를 만들어 보세요.
def printAll( *str1 ) :
    # 갯수를 구하세요
    s = "" # 빈공백
    for i in str1 :
        s = s+i
    print(s)

printAll("a", "b")  # 출력은 ab
printAll("a", "b", "c") # 출력은 abc
printAll("a", "b", "c", "d") # 출력은 abcd
# 265page
def func( food ) : # fruits리스트의 힙메모리의 주소가 전달
    food.append("귤")
    print(food)

fruits = ["사과", "오렌지", "바나나", "사과"] #리스트 : 수정이 된다. 중복 가능 
func( fruits )

# 튜플 - 리스트와 동일 수정이 안됨, 변경하면 안되는 것 이곳에 저장하기

def tD( tDP  ) :
    # tDP.append("코스코")
    print(tDP)

tupleData = ( "삼성", "LG", "세스코" )
tD(tupleData)

# 딕셔너리  자바-맵
def dicF( dicData ) :
    dicData[4]='d'
    print(dicData) 

dicData = { 1:"a", 2:"b", 3:"c" }
dicF( dicData )

def returnSum( n1, n2, n3 ) :
    s = n1 + n2 + n3
    return s

ss = returnSum(10,20,30)
print( ss )

# 반지름 10을 이용해서 원의 넓이 구하는 함수 만드세요.
def returnArea( r ) :
    return r * r * 3.14

circleArea = returnArea(10)
print(circleArea)