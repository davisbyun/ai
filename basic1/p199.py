#병합 + , 합계 sum , 순서꺼꾸로 reverse, 정렬 sort, 복사 copy
#리스트 특징
#여러 자료들의 목록형태로 관리하는 자료구조
#특징 : 순서가 있다. 

person1 = ["kim",24, "kim@naver.com"]
person2 = ["lee",35, "lee@hanmail.net"]
person3 = ["kim",24, "kim@naver.com"]
person = person1 + person2
print(person)

#병합, 합계, 순서꺼꾸로, 정렬, 복사

person = person1 + person2 + person3
print(person)

scores = list(range(80,101,4))
print(scores) #80, 84, 88, 92, 96, 100
sm=sum(scores)
print(sm)

""" #리스트 안에 숫자, 문자 썩에 있다면 sum() 에러
data = [1,2,8.9, "a","b"]
sm = sum (data) """

jumsu = list(range(90,101,1))
avg = sum(jumsu)/len(jumsu)
print(avg)

data =["사과","배", "귤","딸기"]
data.reverse()
print(data)
data.reverse()
print(data)

#복사하기

fruits = ["apple, banana, orange"]
x = fruits.copy() ## 리스트의 내용이 동일하게 다시 메모리 공간에 복사해 만들어 짐 
print(x)

xx = fruits ## fruits 리스트의 주소를 xx 변수에 넣음, 같은 주소를 공유
print(xx)
print(type(x))
print(type(xx))

#pineapple을 1번 인덱스에 넣어주기
fruits.insert(1, "pineapple")
print(fruits)
print(x)
print(xx)

#정렬하기
data = [12,8,15,32,-3,-20,15,34,6]
data1 = ['a','A','C','!','한글','가나']  

#오름차순 정렬
data.sort()
print(data)
data1.sort() #유니코드 순서대로 순차정렬
print(data1)

#내림차순
data.sort(reverse=True)
print(data)
data1.sort(reverse=True)
print(data1)