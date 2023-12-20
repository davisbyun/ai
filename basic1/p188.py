""" # 요소 변환 수정(삽입, 삭제, 업데이트)하기

flowers = ["목련", "벚꽃", "장미", "백일홍"]
print(flowers)
flowers[1] = "무궁화" #수정
print(flowers)
flowers[-1] = "개나리" #수정
print(flowers)
#추가하기 뒤로 붙이기
flowers.append("백일홍")  #어떤 객체에 .append하면 메소드
print(flowers)
flowers.append("튜울립")
print(flowers)
#메소드 vs 함수 동작시키기
#메소드는 객체안에서 동작을 시키는 것
#메소드는 함수 동작을 시키는 것
#실무에서 리스트는 어떻게 쓸까? 빈 리스트를 만들고 나중에 추가로 넣기함

scores = [] #빈 리스트임

scores.append(100)
scores.append(90)
scores.append(85)
scores.append(100)
scores.append(98)
print(scores)

#특정 위치에 삽입하기
fruits = []

while True :
   fruit = input("좋아하는 과일은?")
   if fruit == "끝" :
      break
   fruits.append(fruit)   
print(fruits)   

fruits.insert(1,"자몽") """

#특정 요소 위치찾기
number = [5,20,13,7,8,22,7,17]
print(number)
idx = number.index(7) #7이라는 숫자가 몇 번 인덱스인가 (먼저값) 
print(idx)
idx = number.index(7,5) #7이라는 값의 숫자의 인덱스를 찾는데 번호 5번 이후부터 #6
print(idx)
number = [5, 20, 13, 7, 8, 22, 7, 17, 8, 9, 8, 1]
print(number.index(8, 9,11)) #9~11인덱스 중 숫자8의 값을 찾으세요. #10

flowers = ["목련", "벚꽃", "장미", "벚꽃", "백일홍","벚꽃"]

#첫번째 벚꽃
print(flowers.index("벚꽃"))
#마지막 벚꽃
print(flowers.index("벚꽃",4))

#삭제하기 remove(삭제할요소)
flowers = ["목련", "벚꽃", "장미", "벚꽃", "백일홍","벚꽃"]
flowers.remove("목련")
print(flowers)
flowers.remove("벚꽃")
print(flowers)
#flowers.remove("개나리") #리스티에 없는 것을 지우면 오류
#print(flowers)

x = flowers.pop(2)  #해당인텍스의 값을 밖으로 꺼내라. 보고(x변수에 담고) 버려라.
print(x)
print(flowers)

flowers.clear()   #모두 지우는 것
print(flowers)