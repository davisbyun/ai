# 요소변환 수정(삽입, 삭제, 업데이트)하기
flowers=["목련", "벚꽃", "장미", "백일홍"]
print( flowers)
flowers[1]="무궁화" # 수정
print( flowers)
# 백일홍 수정하기 개나리
flowers[-1] = "개나리"
print( flowers)
#추가하기 뒤로 붙이기 
flowers.append("백일홍")
print( flowers)
flowers.append("튜울립")  # 리스트.append() 메소드 
print( flowers) # 함수
# 메소드 vs  함수  동작시키기 
# 메소드는 객체안에서 동작을 시키는 것 
# 함수 동작을 시키는 것

# 실무에서는 리스트 어떻게 쓸까? 빈리스트만들고 추가로 넣기 
scores = [] # 빈 리스트
scores.append(100)
scores.append(90)
scores.append(85)
scores.append(100)
scores.append(98)
print(scores)

# 특정 위치에 삽입하기
"""
fruits = []

while True :
    fruit = input("좋아하는 과일은?")    
    if fruit == "끝" :
        break
    fruits.append( fruit )
print( fruits )    
fruits.insert(1, "자몽")
print( fruits )
"""

# 특정요소 위치찾기
number = [5,20,13,7,8,22,7,17]
print(number)
idx = number.index(7,5) # 5번인덱스 이후로 나오는 7값 찾기 
print(idx)

number = [5,20,13,7,8,22,7,17, 8,9,8,1]
print( number.index(8,9, 11 ) )

flowers=["목련", "벚꽃", "장미","벚꽃", "백일홍", "벚꽃"]
# 처음으로 나오는 "벚꽃"이 몇번째 인덱스있나요?
print( flowers.index("벚꽃")) # 1번인덱스 있다
# 인덱스 번호 4 이후로 나오는 "벚꽃"의 인덱스 찾기?
print( flowers.index("벚꽃",4)) # 1번인덱스 있다

# 삭제하기 remove(요소)
flowers=["목련", "벚꽃", "장미","벚꽃", "백일홍", "벚꽃"]
flowers.remove("목련")
print(flowers)
flowers.remove("벚꽃")
print(flowers)
# flowers.remove("개나리") # 오류발생
# print(flowers)
x = flowers.pop(2)
print(x)
print(flowers)

flowers.clear()
print(flowers)

# 197page 코딩연습 5-1
data = list( range(1,21))

for i in range( 0,  len(data), 1) : # 0, 21, 1
    print("%d"%data[i], end=" ") # 0~20  

# 5-2 
# 2 4 6 8 10 12 14 16 18 20 
# 힌트 2요소의 인덱스 번호는 1번, 4요소의 인덱스 번호는 3번
print()
for i in range( 1,  len(data), 2) : # 1 3 5 7 9 11 
    print("%d"%data[i], end=" ") # 0~20              

# 5-3 
# 1 3 5 7 9 11 13 15 17 19 
# 힌트 1요소의 인덱스 번호는 0번, 3요소의 인덱스 번호는 2번
print()
for i in range( 0,  len(data), 2) : # 1 3 5 7 9 11 
    print("%d"%data[i], end=" ") # 0~20              
i = 0 
print()   
while i < len(data) :
    print("%d"%data[i], end=" ")
    i += 2
# 5-4 
data = [] #빈리스트
for x in range( 10, 21) : # 10 11 12 ... 20
    data.append( x )   
print( data )