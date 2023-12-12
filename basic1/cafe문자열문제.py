#1
letters = 'java programming'
print(letters[5],letters[1],letters[-1]) 
#뒤에서 앞으로 설때는 -1부터
#앞에서 뒤로 갈때는 0부터

numN = "43다 6521"
print(numN[4:8])
print(numN[4:])
print(numN[-4:-1], numN[-1], sep="")

#아래의 문자열에서 "짝"만 출력하세요
string = "홀짝홀짝홀짝홀짝"
#print(string[시작인덱스:종료인덱스:증가인덱스(시작기준)])
print(string[1:8:2])
print(string[0:8:2])

string = "홀짝!홀짝!홀짝!홀짝!"
print(string[1:8:2])

#문자열을 거꾸로 뒤집어서 출력하세요
#string = "PYTHON"
string = "PYTHON"
print(string[5],string[4],string[3],string[2],string[1],string[0],sep="")
print(string[::-1]) 
#[시작인덱스생략:종료인덱스생략:반대로찍기]

string = "PYTHON"
#Y를 K로 고치기
#string[1] = "K" 안된다. 문자열을 일부분을 수정할 수 없다.
#치환하기
string = string.replace("Y","K") 
print(string)

string = string.replace("N","M")
print(string)

string = "abcdef"
print ( string.replace('a','A') )
print(string)

string = "abcdef"
string = print ( string.replace('a','A') )
print(string)


phone_number="010-888-9999"
phone_number = phone_number.replace("-"," ")
phone_number = phone_number.replace(" ","")

#com만
url = "http://gmail.com"
url = url.split(".")
print(url[1])

url = "http://naver.com"
url = url.split(".") 
print(url[1])

lang = "java python"
lang.replace('j',"k")

string = "abcdefABCDEFabc"
string = string.replace("c", "!")
print(string)

string = "abcdefABCDEFabc"
print( string.replace("c", "!") )
print(string)  #변수 string에 담지 않아 원래 값이 출력

      
#12
a="123"
b="456"
print(a+b)      
print(a,b,sep="")

#12
print("Hi!"*5)
print("+"*150)

s1="python"
s2="c++"
s3="java"
sA= s1 +' ' + s2 + ' ' + s3 + ' '
print(sA*6)

#16
name1 = "홍길동"
age1 = 25
eyssight1 = 1.2
name2 = "이순신"
age2 = 13
eyssight2 = 0.8
print("이름: %s 나이: %d 시력: %.1f"%(name1,age1,eyssight1) )
print("이름: %s 나이: %d 시력: %.1f"%(name2,age2,eyssight2) )

#17 format() 함수 사용
name1 = "홍길동"
age1 = 25
eyesight1 = 1.2
name2 = "이순신"
age2= 13
eyesight2 = 0.8

print("이름 : {} 나이 : {} 시력 : {} ".format(name1, age1, eyesight1))
print("이름 : {} 나이 : {} 시력 : {} ".format(name2, age2, eyesight2))

#18 - 일반적으로 많이 씀

name1 = "홍길동"
age1 = 25
eyesight1 = 1.2
name2 = "이순신"
age2= 13
eyesight2 = 0.8

print( f"이름:{name1} 나이:{age1} 시력:{eyesight1} " )
print( f"이름:{name2} 나이:{age2},시력:{eyesight2} ")

#19  
# (,)를 제거하기  삭제 치환은 replace사용

total = "5,896,124,650"
total = total.replace(",", "")
print(type(total))
total =int(total)
print(total+100)

#20
날짜 = '2024/01(E) 1사분기'
날짜 =날짜[0:7]
print(f"{날짜}")
print(날짜)

날짜 = '2024/01(E) 1사분기'
날짜 = 날짜.split("(")
print(날짜[0])

#21
data = "      공백제거하기   "
data.strip()
print(f"공백제거한값은 {data}")

#22
lowerWord = "python is very good"
print( lowerWord.upper() )

upperword = "PYTHON IS VERY GOOD"
print(upperword.lower())

capitalizeWord = 'python quiz'
print(capitalizeWord.capitalize())

fileName = "abc.csv"
print(fileName.endswitch("csv"))

if fileName.endswitch("csv") :

  print("엑셀파일입니다.")

print(fileName.endswith('csv'or'xlxs'))  