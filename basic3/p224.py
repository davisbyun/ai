# join() 리스트 --> "문자열" 
# "문자열" replace하기 
strings = [ ["원두커피", "라떼", "콜라"], ["우동","국수","피자", "파스타"] ]
s1 = ", ".join( strings[0]) + "  , ".join( strings[1])
print( s1 )

s1=s1.replace("원두커피", "아메리카노")
print( s1 )

# E5-1
my_list = list("pythone is fun!")
print(my_list)

# 심화문제 5-1
file_names = ['file1.py', 'file2.txt', 'file3.pptx', 'file4.doc']
# a = "file1.py"
# aS = a.split(".")
# print(aS[0])
for file_name in file_names :
    fS = file_name.split(".")
    # print(f"{file_name} => 파일명 : {fS[0]}, 확장자 : {fS[1]} ")
    print( "%s => 파일명 : %s, 확장자 : %s"%(file_name, fS[0], fS[1]) )
# 5-2
    
emails = [["kim", "naver.com"], ["hwang", "hanmail.net"],
          ["lee", "korea.com"],["choi", "gmail.com"]]
email_new = []
for email in emails :
    email_new.append(  (   email[0] + "@"  + email[1]        )       )
print( email_new )

# 5-11
data = [ [10,20,30], [40,50], [60,70,80,90] ]
for row in  data   :
    for x in  row  :
        print(x, end=" ") # 제일 처음 x는 10이다 [0][0] 
    print()

for row in range(0, len(data)) :
    for x in range(0, len(data[row])) :
        print( data[row][x], end=" ")
    print()

# 5-12
for i in range(0, len(data)) :
    for j in range(0, len(data[i])) :
        if j==0 :
            print( data[i][j], end=" ")
    print()    

# 5-10 
fruits = ["사과", "오렌지","딸기","수박", "멜론"]    
for i in range( len(fruits) ) : # range(5) # 0 1 2 3 4 
    print("%d. %s " %( i+1 , fruits[i] ) )

# 5-7 ~ 5-8
numbers = [ 7,9,15,18,30,-3,7,12,-16,-12]
# 5-7
sm = sum(numbers)    
print( sm )

sm = 0
for i in numbers :
    sm += i
print(sm)

# 5-8
count = 0
sm = 0
while count < len(numbers) :
    sm += numbers[count]
    count += 1
print( sm )

# 5-9 
count = 0
sm = 0
while count < len(numbers) :
    if count % 2 != 0 :
        print( numbers[count], end=" ")
        sm += numbers[count]
    count += 1
print("합계 %d"%sm )


    