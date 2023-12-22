# 튜플 = 수정이 안된다. 용도 = 변동 불가한 것에 사용

t =(1,2)
t1 =1,2

print (t[0])
print(t1 [1])
print (type(t1))
t2 = (1)
print (type(t2))
t2 = (1,)
print (type(t2))
t2 =1,
print (type(t2))

t3 = () #빈튜플
print(type(t3))

animals = ("토끼","거북이","사자","여우")
print(animals[:3]) #list의 슬라이스와 동일

#토끼를 돼지로 바꾸기
#animals[0] ="돼지" 튜플은 변경 불가
#바꾸기 1단계 list()로 만들고 바꾸고 2단계 tuple()로 변경
ani_list = list(animals)
print(type(ani_list))
print(ani_list)
ani_list[0] ="돼지"
print(ani_list)
animals = tuple(ani_list)
print(animals)

#튜플 만들기
#변수 = (), 변수 = tuple( () )
n = tuple(range(10,21))
print(n)
n2 = tuple([1,2,3])
print(n2)
print(n[0])
print(n[2:5])
print(n[2:])
print(n[:5])
print(n[-2])
print(n[::-1]) #증가치

#튜플길이 
print(len(n))
print(len(n2))


tup1 = (10,20,30,40)
tup2 = (40,50,60)
tup3 = tup1 + tup2
print(tup1)
print(tup2)
print(tup3)
print(tup1*2)
#print(tup1*tup2) 에러
#tup1의 합계
print(tup1[0]+tup1[1]+tup1[2]+tup1[3])
sm = sum(tup1)
# tup1 에서 30 삭제 - 삭제는 불가 
# tup1에 50삽입 - 삽입(수정)은 불가
# tup1.reverse 불가 tup1.remove 불가 tup1.append 불가

t1 =('Valentaine',2,14,'gift')
print(t1[1:2])
t2 =('love')
print(t2[0])
t2[0:]

#cafe 실습2)
a_1 = ['홍길동','이수지','박상민']
a_1[1] ='하누리'
print(a_1)

#a_2 = ('홍길동','이수지','박상민')
#a_2[1] ='하누리' 에러발생
#print(a_2)

