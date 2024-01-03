# 111페이지
"""
start = int(input("시작수는? ")) # 200
end = int(input("끝 수는?")) #500
num = int(input("정수를 입력하세요")) # 235

result = "%d은(는) %d~%d사이에 없습니다"%(num, start, end)

if    start <= num  <= end      :
    result = "%d은(는 %d~%d사이에 있다)"%(num, start, end)
print(result) 

"""
# 난수(규칙이 없는 수)를 구하기
import random

# print( random.random() ) # 0.0 <= r < 1.0
# print( random.randrange(1, 7)) # 1<= 랜덤수 < 7 주사위 
thinkNumber = random.randrange(1, 31) # 1~30까지 숫자 랜덤
c = 0
a1 = int(input("답은?")) # 15  25
while   a1 != thinkNumber    : # 정답을 찾을 때
    if a1 < thinkNumber : # 15 < 23
        result = "답보다 큰 수입니다."  
        c += 1  
    else : # 25 
        result = "답보다 작은 수입니다." 
        c += 1
    print( f"{result}")    
    a1 = int(input("답은?"))       
result = "정답입니다"
print( f"{ c }번만에 찾았습니다")