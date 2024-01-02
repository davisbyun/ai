""" #ord 아스키코드
x = 'a'
print(ord(x))

#bin 이진수
x=15
print(bin(x))

#hex 16진수
x = 15
print(bin(x))
print(hex(x))

#round  반올림
x=round(7.65678)
print(x)

#최대값
x=max(10,9,-20)
print(x)

#최소값
x=min([1,5,0,7])
print(x)

#튜플
x=max((10,8,7,20))
print(x)

#Set
x=min({10,98,67,10})
print(x)

#딕셔너리
x=min({1:"a",0:"b"})
print(x) #키의 제일 작은 수 출력

#리스트
x=min(['a','A','c'])
print(x) #유니코드로 제일 작은 수 'A'가 출력

#사용자함수 활용
#소수여부 판별하기
 
def is_prime(n):
  prime = True
  if n>1:
    for i in range(2, n) :
      if n%i ==0 :
        prime = False
        break
  return prime

number = int(input("수를 입력하세요 : "))      

if is_prime(number) :
  print("소수이다.")
else :
  print("소수가 아니다.")  


#세제곱의 합을 구하기

def square_sum(n) :
  sm = 0
  for i in range(1,n+1) :
    sm = sm + (i*i*i)
  return sm  

N = int(input("N의 값을 입력하세요"))
print(square_sum(N))


#C8-1
def square_sum(n) :
  sm = 0
  for i in range(1,n+1) :
      sm = sm + (i*i*i)
      print("%d*%d*%d" %(i,i,i), end="")
      if i == n :
          print("= ", end="")
      else:
          print("+ ", end="")  
  print(sm)  

N = int(input("N의 값을 입력하세요"))
print(square_sum(N))


#C8-2
def square_sum(n) :
  sm = 0
  for i in range(1,n+1) :
      if i % 2 != 0 :
      sm = sm + (i*i*i)
      print("%d*%d*%d" %(i,i,i), end="")
      if i % 2 != 0 :
          print("= ", end="")
      else:
          print("+ ", end="")  
  print(sm)  

N = int(input("N의 값을 입력하세요"))
print(square_sum(N)) 


#회문인지 판별하기 - 회문 구하는 알고리즘

def is_palindrome (s) :
    for i in range(0,int(len(s)/2)) :
        if (s[i] != s[len(s)-1-i]) :
            return False
    return True    

string ="기러기"
if is_palindrome(string) :
  print("회문")
else :
  print("회문이 아니다")  

 


def reverse_sentence(sentence) :
    words = sentence.split(" ")  # split 공백 기준으로 짤라서 리스트로 만들어 준다.
    result = ""
    for word in words :
        result = word + " " + result +" " 
    return result

sentence = "Nice to meet you"
print(reverse_sentence(sentence)) 



#예제8-9 
def check_word(s, w) :
  if (s.find(w) == -1) :
      print("존재하지 않는다.")
  else :
      print("존재한다.")    

string = "A good book is a great friend."
word = "friend"
check_word(string, word) """


#테스팅코드
#print(string.find("is"))  #12,  string 문자열 안에 12번째 인덱스에 있음 [12]
#print(string.find("as"))  #-1,  string 문자열 안에 as가 없으면 -1 출력됨


#예제8-10 찾는다-->바꾼다-->리스트를 문자열로 바꿔서 리턴한다

""" def replace_word(s, wl, w) :
    new_str = []
    ssList = s.split(" ")
    for si in ssList :
        if si in word_list :
            new_str.append(w) 
        else :
            new_str.append(si)
    #리스트를 문자열로 바꾸기
    new_str1 = " ".join(new_str)
    return new_str1
string = "python java php apple orange banana"
word_list = "apple orange banana"
word = "fruits"
new_str = replace_word(string, word_list, word)
print("치환된 문자열 : " + new_str)
 

def string_shift(string, d, direction) :
  if direction == "left" :
    left_part = string[d:]
    right_part = string[0:d]
  else :
    left_part = string[-d:]
    right_part = string[0:len(string)-d]
  result = left_part + right_part
  return result

string = "pythonprogramming"
str_left = string_shift(string, 2, "left")
str_right = string_shift(string, 3, "right")

print("좌측으로 2칸이동" , str_left)
print("우측으로 3칸이동" , str_right)
 

#C8-4
def count_word(s) :
  arr = s.split(" ")
  return len(arr) #len(리스트) 리스트 안에 요소들의 갯수를 반환한다.

string = "I am a student"
num_word = count_word(string)
print("단어의 개수 :", num_word)
"""

#C8-5
def del_word(s, w) :
    arr = s.split(" ")
    arr.remove(w)
    result = " ".join(arr)
    return result

string = "Don't cry before you are the hurt"
word = "the"
new_str = del_word(string, word)
print("변경된 문자열 ", new_str)

#선형탐색, 순차탐색, 앞에서부터 차례대로 찾기, 정렬이 안된 자료 찾기
#검색횟수 최악인 경우 n회 만에 찾는다.
#이진탐색, 이분탐색, 전제조건이 정렬이 되어야 한다.
#최악 시간의 복잡도 logN

""" 
#예제 8-12
def find_max(n) :
    mx = n[0]
    for i in range(1,len(n)) :
        if n[i] > mx :
            mx = n[i]
    return mx

data = [5,-3, 12, 8,2]
print(data)        

max_value = find_max(data)
print("선형검색으로  최댓값 : ", max_value )

 """
def binary_search(n,x) :
    start = 0
    end = len(n)-1 #8
    while start <= end :
        mid = (start +end ) // 2  #4
        if x == n[mid] :
            return mid
        elif x > n[mid] :
            start = mid + 1
        else :
            end = mid - 1
    return -1        


data = [7, 16, 23, 35, 40, 52, 68, 78, 82]
print(data)

search_num = 52
index = binary_search(data, search_num)
print(index)


#p322 E8-3

def sen_splite(s) :
    ss = s.split("/")
    for sp in ss :
        print("%s: %d" %(sp,len(sp)))
    

sentence = "강아지/사슴/거북/고릴라/청개구리"

sen_splite(sentence)