# 특정문자열 찾기, 문자열치환, 문자열쪼개기
string1 = "Python is fun!"
print( string1 )
a = string1.find("k") # 못찾으면 -1 나온다
print( a )

studentName = "홍길동 이순신 이경미 최수진"
# 최수진 있어요?
# 우리반 아닙니다.
if studentName.find("최수진") == -1 :
    print("우리반 아닙니다")
else :
    print("우리반 입니다")

# 치환하기
studentName = studentName.replace( "최수진", "정수진" )
print( studentName )

# 치환하기 - 없는 자료를 치환하면 오류는 없고 치환 안됨 
studentName = studentName.replace( "이수진", "박수진" )
print( studentName )

data = "홍길동/이순신/최경주"
# 결과 홍길동 이순신 최경주 
# 결과 홍길동-이순신-최경주
data = data.replace( "/", " ")
print( data )
data = data.replace(" ", "-")
print( data )

# 데이터 쪼개기
hello = "hava a nice day; Happy new Year; Merry Christmas"
list1 = hello.split(";")
print( list1 )
list1 = hello.split(";", 1)
print( list1 )

names = ["황애린", "홍지수", "안지영"]
print( names )

x = "/".join( names ) # 리스트를 문자열 변환 "/"
print( x )
phoneNumber = ["010", "1234", "4567"]
xx = "-".join(phoneNumber)
print(xx)
print( type( xx ) )

#209 5-25
#210 5-26 
#218 C5-5 문제 풀기
"""
questions = ["s_hool", "compu_er", "deco_ation", "windo_", "hi_tory"]
answers = ["c","t", "r","w", "s"]

for i in range(  0, len( questions), 1 ) : #문제가 5개니깐 5번 반복 0 1 2 3 4
    q="%s : 밑 줄에 들어갈 알파벳은?" % questions[i] 
    guess = input(q) # c 입력
    if   guess == answers[i]         :
        print("정답!")
    else :
        print("틀렸습니다")    
"""

#219 C5-6 문제 풀기 35분까지   
       
scores = []
while True :
    x = int(input("성적을 입력하세요(종료시 -1 입력) : ")) # 77

    if x == -1 :
        break
    else :
        scores.append(x)
# sum = 0
# for score in scores :
#     sum += score
sm = sum( scores )        
avg = sm / len( scores )
print("합계 : %d, 평균 : %.2f" % (sm, avg))                