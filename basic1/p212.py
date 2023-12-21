#2차원 리스트
numbers = [[10,20,30],[40,50,60],[60,70,80],['a',[100,90]]]
print(numbers[0][0]) ## 10
print(numbers[1][2]) ## 60
print(numbers[2][2]) ## 80
print(numbers[3][0]) ## 'a'
print(numbers[3][1][0]) ##100

boards = [[1, "작성자1", "내용1"],[2, "작성자2", "내용2"],[3, "작성자3", "내용3"]]
##내용 전부 찍기
##[0][0] [0][1] [0][2]   [1][0] [1][1] [1][2]   [2][0] [2][1] [2][2]    앞쪽이 바깥 반복(i) 000 111 222, 뒤쪽이 안쪽 반복(j) 012 012 012
for i in range(0,len(boards ) ):  #0,1,2
  for j in range (0,len(boards[i])) :
      print( boards[i][j], end=" ")
  print()

##내용모두출력
jumsu = [[10,20],[30,40,50],[60]]


for i in range(0,len(jumsu ) ):       #0,1,2
  for j in range (0,len(jumsu[i])) :  #2,3,1
      print( boards[i][j], end=" ")
  print()

##문1의 합
sm = 0
for i in range(0,len(jumsu ) ):       #0,1,2
  for j in range (0,len(jumsu[i])) :  #2,3,1
    sm = sm + jumsu[i][j]

print(sm)

jumsu = [[10,20],[30,40,50],[60]]
print(sum(jumsu[0] ))
print(sum(jumsu[1] ))
print(sum(jumsu[2] ))

sm = sum(jumsu[0]) + sum(jumsu[1]) +sum(jumsu[2])
print(sm)

##for문으로 합계 구하기

sm = 0
for i in range(0, len(jumsu)) :
   sm += sum(jumsu[i])
   print(sm)

strings = [ ["원두커피","라떼","콜라"],["우동","국수","피자","파스타"] ]
print(strings[1][1]) ##국수
##피자, 파스타 삭제
strings[1].remove("피자")
strings[1].remove("파스타")

##d원두커피를 아메리카노로 치환
##strings[0][0] = 아메리카노
##생각 "원두커피"의 인덱스를 찾아서 해당 인덱스를 수정한다.
##원두커피 인덱스 찾기

strings = [ ["원두커피","라떼","콜라"],["우동","국수","피자","파스타"] ]

findColumIndex = strings[0].index("원두커피")
strings[0][findColumIndex]

print(strings[0])
print(strings[1])

#join() 리스트 --> 문자열
#문자열 replace

strings = [ ["원두커피","라떼","콜라"],["우동","국수","피자","파스타"] ]




