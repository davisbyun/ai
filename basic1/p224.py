""" my_list = ["p","y","t","h","o","n","i","s","f","u","n"]
print(my_list[5:11])  ##['n', 'i', 's', 'f', 'u', 'n']
print(my_list[-5:-2]) ##['i', 's', 'f']
print(my_list[8:])    ##['f', 'u', 'n']
print(my_list[:4])    ##['p', 'y', 't', 'h']

my_list = list("I am a genius!")
print(my_list)

numbers = [7,9,15,18,30,-3,7,12,-16,-12]
s1 = 0
for i in range(0, len(numbers)) :
   s1 += sum(numbers[i])
   print(s1) """

file_name = ["flie1.py", "file2.txt", "file3.pptx", "file4.doc"]
a= "file1.py"
aS = a.split(".")
print(aS[0])

#S5-1
for file_name in  file_name :
  fS = file_name.split(".")

  print(f"{file_name} => 파일명 : {fS[0]}, 확장자 : {fS[1]} ")

#S5-2
emails = [["kim","naver.com"],["hwang","hanmail.net"],["lee","korea.com"],["choi","gmail.com"]]  
email_new = []
for email in emails :
  email_new.append((email[0] +"@" + email[1]       ))
  print(email_new)

#5-11  
data = [[10,20,30],[40,50],[60,70,80,90]]
for row in data :
  for x in row :
      print(x, end=" ")
  print()

#5-11 ver.2
for row in range(0, len(data))  :
   for x in range(0, len(data[row])) :
      print(data[row][x], end=" ")
   print()

#5-12
data = [[10,20,30],[40,50],[60,70,80,90]]  
for i in range(0, len(data)) :
   for j in range(0, len(data[i])) :
      print(data[i][j], end=" ")
   print()   
   
#5-10
fruits = ["사과","오랜지","딸기","수박","멜론"]      
for i in range(len(fruits)) : #0~4
   print("%d. %s" %(i+1, fruits[i]))

###########################5-7
numbers = [7,9,15,18,30,-3,7,12,-16,-12]   
sm = sum(numbers)
print(sm)

#5-7 ver.2
sm = 0
for i in numbers :
   sm += i
print(sm)

#5-7 while문
sm =0
count = 0
while count < len(numbers) :
   sm += numbers[count]
   count += 1
print(sm)   

#5-9 짝수출력
sm =0
count = 0
while count < len(numbers) :
   if numbers[count] % 2 == 0 :
      print(numbers[count], end=" ")
      sm += numbers[count]
   count += 1

print(sm)   

#5-9 짝수 번 째
sm =0
count = 0
while count < len(numbers) :
   if numbers[count] % 2 != 0 :
      print(numbers[count], end=" ")
      sm += numbers[count]
   count += 1

print(sm)   