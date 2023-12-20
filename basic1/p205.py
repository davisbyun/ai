# 특정 문자열 찾기, 문자열치환, 문자열 쪼개기

""" string1 = "Python is fun!"
print(string1)
a = string1.find("fun")
print(a) #10번 인덱스에 위치함
a = string1.find("n") #앞에 있는 n의 위치
print(a)

a = string1.find("p") #앞에 있는 n의 위치
print(a) #find는 못찾으면 -1이 리턴된다. <중요> 

studentName = "홍길동","이순신","이경미, 최수진"

if studentName.find("최수진") == -1 :
  print("우리반 아닙니다.")
else :
  print("우리반입니다.")  

#치환하기
studentName = studentName.replace("최수진","정수진")  
print(studentName)


studentName = studentName.replace("최수진","정수진")  
print(studentName)
 """
""" data = "홍길동/이순신/최경주"
# 결과 : 홍길동 이순신 최경주
data.replace("/", " ")
print(data)
# 결과 : 홍길동-이순신-최경주
data.replace(" ", "-")
print(data) """

""" #데이터쪼개기

hello = "have a nice day; Happy new Year; Merry Christmas"
list1 = hello.split(";") # ;(구분자) 기준으로 짤라라
print(list1)
list1 = hello.split(";", 1) # ;(구분자) 기준으로 1번 인덱스는 짜르지 말라
print(list1)
 """


""" # join() 가장 중요- 리스트를 문자열로 바꿈

names = ["황애린","홍지수","안지영"]
print(names) #['황애린', '홍지수', '안지영']

x = "/".join(names)
print(x) #황애린/홍지수/안지영


phoneNumber = ["010", "1234", "4567"]
xx = "-".join(phoneNumber)
print(xx)
print(type(xx))
 """

#5-25
phone_list1 = ["010-3654-2637","010-3984-5377","010-3554-0973"]
print(phone_list1)

phone_list2 = []
for number in phone_list1 :
  x = number.replace("-", "")

  phone_list2.append(x)

print(phone_list2)

#c5-5

question = ["s_hool","compu_er","deco_ation","windo_","hi_tory"]
answer = ["c","t","t","w","s"]

for i in range( 0, len(question),1) :
    q="%s : 밑줄에 들어갈 알파벳은? " %question[i]
guess = input(q)

if guess == answer[i] :
  print("정답!")
else :
  print("틀렸어요")


#5-6

scores =[]
while True :
  x = int(input("성적을 입력하세요(종료 시 -1 입력)"))

  if x == -1 :
    break
  else :
    scores.append(x)

#    sum = 0
#    for score in scores : 
#      sum += scores
    
    sm = sum(scores)
    avg = sm/len(scores)
    print("합계 : %d, 평균 : %.2f" %(sum, avg))

