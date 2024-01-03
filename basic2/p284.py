
r = 0 # 전역변수
def printSum( sList ) :
    # r = 0 # 지역변수
    global r # 전역변수 r 이라는 뜻
    r=0
    for s in sList :
        r += s
    return r

sList = [1,3,5,6,2]
print( printSum(sList) )
print( r )

# 288 연습문제
# 7-1, 7-2, 7-3 코드 입력한 후 실행 결과 확인해 보기

def func() :
    global x
    x=200
    print(x)
x=100
func()
print(x) 

# 7-4
# 실행결과를 보면서 차례대로 만들어 갑니다.
# 7-6 사용자 함수를 이용하여 영어문장에 있는 아팟벳의 개수를 카운트하는 프로그램
# 
"""
def alphaCount( word , aOne  ) :
    count = 0
    for  i in word : # "I am a Student"
        if i == aOne :
            count += 1
    return count

word = input( "영어문장을 입력하세요 ")  
aOne = input("알파벳 하나를 입력하세요 ")
count = alphaCount( word, aOne )
print( f"{word}에 포함된 {aOne}의 개수는 {count}이다.")

# 7-7 
def tup1Sum( t1 ) :
    sm = 0
    for i in t1:
         sm = sm + i
    return sm

tup1 = ( 10,20,30,40,50 )
ss = tup1Sum( tup1 )
print("튜플의 합계 : %d"%(ss) )

# 7-8 Thank you. 역순으로 출력하기
def reverseFun( strVar) :
    for  i in range(  len(strVar)-1,  -1) : # 9 8 7 6 5 4 3 2 1 0
        print( strVar[i], end="")

strVar = input("문자열을 입력하세요.") 
reverseFun( strVar )

# 7-9 입력된 문자열에서 공백을 "-"으로 치환하는 프로그램
def b( s1 ):
    global s # 68번 줄의 s변수 즉 전역변수라는 뜻
    s = s1.replace(" ", "-")
    
    
s = input("문자열을 입력하세요")
b( s  )
print( s )

# 심화문제 7-2 
eng_dict = { "house":"집", "piano":"피아노", "christmans" : "크리스마스", "friends":"친구", "bread":"빵"}

def engQuiz( eng_dict ) :
    for i in eng_dict : # 키값들이 i변수에 담긴다.
        answer = input( f"{ eng_dict[i] }에 맞는 영어단어는?")
        if answer == i :
            print("참 잘했어요!")
        else :
            print("틀렸어요!")    

engQuiz( eng_dict )    

# 심화문제 7-1 291page
n = int(input("n값을 입력해 주세요")) # 50

def decimalFun( n1 ) :
    dL = []
    for i in range( 2, n1, 1) : # 2 3 4 5
        x = True
        for j in range( 2, i, 1) : # 1,  2 , 2 3 , 2 3 4 5 
            if i % j == 0   :  # 2 % 2 == 0 
                x = False
                break
        if x :
            # print(i)
            dL.append(i)
    return dL        

dL=decimalFun( n )
print(dL, end="")

"""
# 7-3 
n = int( input("n값을 입력하세요:"))

def nMul( n ) :
    result = []
    for i in range( 1, n+1 ) : # 1~10
        result.append( i*i )
    return result

resultList = nMul( n )
print( resultList )