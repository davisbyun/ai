#p.182 리스트 - 순서있음, 삽입,수정,삭제 가능, 요소(숫자(정수,실수),문자,리스트) 복합가능

#여러 자료들의 목록 형태로 관리하는 자료구조
#특징 : 순서가 있다. 수정이 가능하다. 요소의 종류가 달라도 된다
""" list1 = [1, 1.1, "문자", [1,9], 7, 8]
print(list1 [1:5:3]) #[1][4] 범위 내 3칸 걸러서 

list1 = [3, 15, -12, "사과", "딸ㄱ;"]
print(list1)
print(type(list1))
 """
#리스트를 만드는 방법
#방법1 변수 = [ 요소1, 요소2, ...]
#방법2 list() 함수를 사용하기 
""" list2 = list(range(1,21,2))
print(list2)
print(type(list2))

list3 = list("abcdef")
print(list3)
print(type(list3)) """

color = ["빨강","주황","노란","초록","파랑","남색","보라"]
print(color[0])
print(color[5])
print(color[2:6])  #2 <= index <6
print(color[2:7])
print(color[-3]) #역순 : 뒤에서 세번째
print(color[-4:-1]) 
print(color[3:])
print(color[-5:-7])
print(color[-5:])
print(color[-7:-4])

#전체출력
print(color[:])
print(color[::])

##
print(color[1],color[4],color[6] )

#tuple
list6 = (color[1],color[4],color[6] )
print(list6)
print(type(list6))

#반복문과 리스트
#for i in color : 
#   변수  리스트 ["빨강","주황","노란","초록","파랑","남색","보라"]

for i in color :
#  print(i, end=" ")
#  print("나는 %s를 좋아합니다."%i)
   print(f"나는 {i}를 좋아합니다.")
print(len(color))  #7, 리스트의 요소의 갯수
  

