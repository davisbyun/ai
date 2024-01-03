# 182 리스트 특징
# 여러 자료들의 목록형태로 관리하는 자료구조
# 특징 : 순서가 있다. 수정이 가능하다. 요소의 종류가 달라도 된다.
#        중복저장가능 - 요소가 동일하게 여러개 나올수있다. 
list1 = [1, 1.1, "문자", [1,9],7,8 ]
print( list1[1:5:3] ) # [1] [4]

list1 = [3,15,-12.5, "사과", "딸기"]
print(list1)
print( type(list1) ) # type() 자료형 보기

# 리스트를 만드는 방법
# 방법1) 변수=[요소1, 요소2 ]
# 방법2) list() 함수를 사용하기 
list2 = list( range(1,21,2) )
print(list2)
print(type(list2))
 
list3 = list("abcdef") # ['a','b','c'...]
print( list3 )
print( type(list3))

color = ["빨강", "주황", "노랑", "초록", "파랑", "남색", "보라"]
print( color[0] )
print( color[5])
print( color[2:6])  # 2 <= index < 6
print( color[-3]) #뒤에서부터 세번째
print( color[-4:-1])

# 전체 출력
print( color )
print( color[::] )
print( color[:] )
# ["초록", "파랑", "남색", "보라"] 출력
print( color[3:])
# ["빨강", "주황", "노랑"] 출력
print( color[0:3])
print( color[-7:-4])
print( color[:-4])
# "주황", "파랑", "보라" 추출하기
list6 = ( color[1], color[4], color[5])  
print( list6 )
print(type(list6))

# 반복문과 리스트
# for i    in  color :
#    변수       리스트  color = ["빨강", "주황", "노랑", "초록", "파랑", "남색", "보라"]

for i in color :
   # print( i, end=" ")
    print("나는 %s를 좋아합니다"%i)

print( len(color) ) # len(리스트) 리스트 요소의 갯수