# r = 0 #전역변수
# def printSum(sList) :
#     global r #전역변수 r이라는 뜻
#     #r = 0 #지역변수
#     for s in sList :
#         r += s
#     return r
  
# sList = [1,3,5,6,2]
# print( printSum(sList) )

# #288 연습문제 7-1~3

# #7-1

# def func() :
#     x = 200  
#     print(x)
    
#     func()    
   

# #7-2
# def func() :
#     x = 200

#     x = 100
#     func()
#     print(x)

# #7-3
# def func() :
#     global x
#     x = 200

#     x = 100
#     func()
#     print(x)

""" 
#7-4
km = (int)(input ("킬로미터를 입력하세요"))    
def conv (km) :
  m = km * 0.621372   
  return m
  
#print(f"{km}는 { conv(km)}마일입니다.") 
print("%d킬로미터는, %.2f마일이다" %(conv, km) )
 """
""" 
#7-4

x = int(input("원하는 연산자를 선택하세요(1/2/3/4)"))
a = int(input("첫번째 숫자를 입력하세요"))
b = int(input("두번째 숫자를 입력하세요"))

while (1==1) :
    if x == 1  :
      def plus() :
        return a+b
    break

    if x == 2 :
      def minus() :
        return a-b   
    break
    
    if x == 3 :
      def sb() :
        return a*b
    break
    
    if x == 4 :
      def mul() :  
        return a/b  
    break """

""" def alpaCount(word, aOne) :
  count = 0
  for i in word :
    if i == aOne :
      count += 1
  return count    
word = input("영어문장을 입력하세요")
aOne = input("알파벳 하나를 입력하세요")
count = alpaCount(word, aOne)
print(f"{word}에 포함된 {aOne}의 개수는 {count}입니다") """

""" #7-7
def tub1Sum(t1) :
  sm=0
  for i in t1 :
 
     sm =sm+ i
  return sm
  
tup1 = (10,20,30,40,50)
ss= tub1Sum(tup1)
print("튜플의 합계  : %d"%(ss))
 """

""" #7-6  
#Thank you 역순 출력하기
def reversefun( strVar ):
  for i in range( len(strVar)-1, -1, -1  ) :
    print(strVar[i], end="")

strVar = input("문자열을 입력하세요")
reversefun(strVar)
 """
#7-9 입력된 문자열에서 공백을 "-"으로 치환하는 프로그램
""" s = "I am a Student"
s.replace(" ", "-")
print(s) """

""" def b(s1) :
    global s #122번의 s = input~의 전역변수를 의미, 메모리를 차지하므로 선택에 신중(장바구니, 로그인유지 등에 사용)
    s = s1.replace(" " , "-")
    # return s (global 사용하지 않을 경우 리턴을 쓰면 됨, 아래 b(s)는 s = b(s)로 변경해야 함)

s = input("문자열을 입력하세요")
b(s)
print(s)


eng_dict = {"house":"집","piano":"피아노","christmas":"크리스마스"}
def engQuiz() :
    for i in eng_dict :  #키 값들이 i 변수에 담김
        answer = input(f"{eng_dict[i]  }에 맞는 영어단어는?")
        if answer == i :
            print("참잘했어요")
        else :
            print("틀렸어요")    

engQuiz( eng_dict )


#심화7-1 p291
n = int(input("n값을 입력해 주세요")) #50

def decimalFun(n1) :
    dL = []
    for i in range (2, n1, 1) :
        x= True
        for j in range(2, i, 1) :
            if i % i == 0 :
                x == False
                break
            if x :
              dL.append(i)
            
    return dL    

decimalFun(n)
  
 """

#7-3

n = int(input("n값을 입력하세요"))


def nMul(n) :
    result = []
    for i in range(1,n+1) :  #1~10까지
        result.append(i*i)
    return result

resultList = nMul(n)    
print(resultList)


