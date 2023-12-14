# ans1 = input("'사자'의 영어단어는 무엇일까요?")
#     result = "땡! 틀렸습니다."
# if ans1 =="lion" :
#   result = "딩동댕! 참 잘했어요."
# print(result)  

# ans1 = input("'오랜지'의 영어단어는 무엇일까요?")
#     result = "땡! 틀렸습니다."
# if ans1 =="orange" :
#   result = "딩동댕! 참 잘했어요."
# print(result)  

# ans1 = input("'기차'의 영어단어는 무엇일까요?")
#     result = "땡! 틀렸습니다."
# if ans1 =="train" :
#   result = "딩동댕! 참 잘했어요."
# print(result)  

print("영어단어 공부하기 ver.30")
yn = "y"

o = 0
x = 0


while yn == "y" :
        
    q1 = input("질문하는 단어는(한국어)")
    a1 = input("답변하는 단어는(영어)")

    if q1 == '사자' and a1 == 'lion' :
        result = "딩동댕 참 잘했어요"
        o = o + 1
    elif q1 == '오렌지' and a1 == 'orange' :
        result = "딩동댕 참잘했습니다."
        o = o + 1
    elif q1 == '기차' and a1 == 'train' :
        result = "딩동댕 참잘했습니다."  
        o = o + 1
    else :
        result = "땡 틀렸습니다."
        x = x + 1
    print(result)   

    yn = input ("계속 공부할례요?(y/n)")

print("<< 오늘 공부한 것 분석")
print(f"전체 {o+x} 문제 풀었다.")
print(f"전체 {o} 문제 풀었다.")
print(f"전체 {x} 문제 틀렸다.")












