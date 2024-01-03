"""
ans1 = input("'사자'의 영어 단어는 무엇일까요?")
result = "땡 틀렸습니다"
if ans1 == "lion" :
    result = "딩동댕 참 잘했어요~~~"
print( result )  

ans1 = input("'오렌지'의 영어 단어는 무엇일까요?")
result = "땡 틀렸습니다"
if ans1 == "orange" :
    result = "딩동댕 참 잘했어요~~~"
print( result ) 

ans1 = input("'기차'의 영어 단어는 무엇일까요?")
result = "땡 틀렸습니다"
if ans1 == "train" :
    result = "딩동댕 참 잘했어요~~~"
print( result ) 
"""
print("영어 단어 공부하기 ver 2.0")
yn = "y"
o = 0
x = 0
while  yn == "y"   :
    q1 = input( "질문단어는(한국어)?")
    a1 = input("답변단어(영어)?")
    # 사자이면 a1이 lion 맞는 것
    # 오렌지이면 a1이 orange 맞는 것
    if q1 == '사자' and  a1 == 'lion'  :
        result = "딩동댕 참 잘했어요~~~"
        o = o + 1
    elif q1 == '오렌지' and a1 == 'orange' :
        result = "딩동댕 참 잘했어요~~~" 
        o += 1
    elif q1 == '기차' and a1 == 'train' :  
        result = "딩동댕 참 잘했어요~~~"  
        o += 1
    else :
        result = "땡 틀렸습니다." 
        x += 1 
    print( result )   
    yn = input("계속 공부할래요(y/n)")
print("<< 오늘 공부한 것 분석 >>")
print( f"전체 { o + x }문제 풀었다")
print( f"{o} 문제 맞추었고")
print(f"{x} 문제 틀렸다") 