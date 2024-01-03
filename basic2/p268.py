# C7-1, C7-2, C7-3, C7-4 연습문제 풀기
# 7-3
def member_join( *args ) :
    result = ""
    for  arg  in  args :
        result = result + arg + " "
    print("가입회원 :", result    )

member_join("김정연", "안서영")
member_join("황선영", "김철영", "이창연")
member_join("정수진", "김보람", "정수연", "함소영")

def multiply( num , x) : # num은 numbers주소 받는다. 
    i=0
    while i < len( num  ): # i < 5
        num[i] = num[i] * x
        i = i+1

numbers=[10,20,30,40,50]
multiply( numbers, 10)  # numbers안에 있는 주소를 보낸다
print( numbers )

multiply( numbers, 10) 
print( numbers )