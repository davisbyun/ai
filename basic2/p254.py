# 함수
# 용도는? 역할을 담당하는 것
# 사용법은? 만들기 - 호출해서 사용
def hello():    #만들기
  print("Hi!")
def goodMorning():
  print("Good Morning")

goodMorning() #호출  
hello()  #호출

# 함수의 종류
# 내장함수 - 파이썬에서 미리 만들어 둔 것 p.257  위 print 해당
# 사용자 정의 함수 - 프로그래머가 만들어 주는 함수 - 위 hello, goodMorning 해당 
# 안녕! 현희야, 안녕! 길동야, 안녕! 민수야

def hi(name):
  print(f"안녕  {name}  야")

hi("현희")  #매개변수에 들어갈 값 : 실인수(Arguments)
hi("길동")
hi("민수")

# 나는 현희야 키가 160이야, 나는 길동야 키가 180야, 나는 민수야 키가 170야

def height(name, height):
  print(f"나는 {name}야, 키는 {height}야 ")
  
  height("현희", 160)
  height("길동", 180)
  height("민수", 170)


def average(*args) :
  print(type(args))
  print(args)
  num_args = len(args)  #실인수의 갯수
  sum = 0
  for i in args :
    sum = sum +i
    avg = sum / num_args
    print(f"평균은 {avg}")

average(85,96,87)
average(85,96,87,97,72)
average(5,78)

#함수를 만들어보세요.
def printAll (*str1) :
    #갯수를 구하기
    s = ""
    for i in str1 :
      s = s+i
    print(s)
#p.265
printAll("a","b") #출력은 ab
printAll("a","b","c") #출력은 abc
printAll("a","b","c","d") #출력은 abcd

def func(food) : #fruits 리스트의 힙메모리의 주소가 전달 (.append 가능)
    for x in food :
        print(x)

  

fruits = ["사과","오랜지","바나나", "사과"] #리스트 : 수정이 된다. 중복 가능하다.  

func(fruits)

#튜플 - 리스트와 동일 수정이 안됨, 변경하면 안되는 것, 이곳에 저장하기(.append 불가)

def tD(tDP) :
    for i in tDP :
       print(i)

tupleData = ("삼성", "LG", "세스코")
tD(tupleData)

#딕셔너리 자바 = 매

def dicF(dicData) :
   print(dicData)
   dicData[4] ='d'
   print(dicData[1])
   print(dicData[2])
   print(dicData[3])

dicData = {1:"a", 2:"b", 3:"c"}
dicF(dicData)


def returnSum(n1, n2, n3) :
   s = n1 + n2+ n3
   return s 


ss = returnSum(10,20,30)
print(ss)


#반지름 10을 이용하서 원의 넓이를 구하는 함수 만드세요
def returnArea(r) :
   return r* r* 3.14



circleArea = returnArea(10)
print(circleArea)





