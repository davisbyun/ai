# 1. 문자열 인덱싱
# >> letters = 'java programming'
letters = 'java programming'
print( letters[5], letters[1], letters[-1])

carNumber = "43다 6512"
print( carNumber[4:8])
print( carNumber[-4:-1], carNumber[-1], sep="")

string = "홀짝!홀짝!홀짝!홀짝!"
print(string[ 1 : 8 : 2])
# string[ 시작인덱스 : 종료인덱스 : 증가인덱스 ]

string = "PYTHON"
print(string[5], string[4], string[3],string[2],string[1], string[0], sep="")
print(string[::-1])
# string[ 시작인덱스 생략하면 0 : 종료인덱스 생략하면 마지막 : 증가인덱스 ]

# "Y"-->"K"
# string[1] = "K" 안된다. 문자열은 일부분을 수정할 수 없다.
# 치환하기
string = string.replace("Y", "K")
print(string)

print( string.replace("N", "M") )
print(string)

string = "abcdef"
# a-->A
print( string.replace('a', 'A') ) 
print( string )

string = string.replace('a', 'A')
print( string )

phone_number="010-888-9999"
phone_number = phone_number.replace("-", " ")
print( phone_number )

phone_number = phone_number.replace(" ", "")
print( phone_number )

url = "http://www.naver.com"
url = url.split(".")
print( url[1] )

lang = "java python"
# lang[0] = "k" # 문자열은 부분적으로 수정이 안됨
lang = lang.replace("j", "k")
print( lang )

string = "abcdefABCDEFabc"

string = string.replace("c", "!")

print(string)
string = "abcdefABCDEFabc"
print( string.replace("c", "!") )
print(string)

# 12문제
a="123"
b="456"
print( a+b)
print(a,b, sep="")

print("Hi!"*5)

print("+"*150)

# 15
s1="python"
s2="c++"
s3="java"
s4 = s1 + ' ' + s2 + ' ' + s3 + ' '
print( s4 * 6)

# 16
name1="홍길동"
age1=25
eyesight1 = 1.2
name2="이순신"
age2=13
eyesight2 = 0.8

print("이름: %s 나이:%d 시력: %.1f"%(name1, age1, eyesight1   ) )
print("이름: %s 나이:%d 시력: %.1f"%(name2, age2, eyesight2   ) )

# 17 format()
print("이름 : {} 나이: {} 시력: {}  ".format( name1, age1, eyesight1) )
print("이름 : {} 나이: {} 시력: {}  ".format( name2, age2, eyesight2) )

# 18 -- 일반적 많이 써요 f-string 
print( f"이름: {name1} 나이: {age1} 시력: {eyesight1} ")
print(f"이름: {name2} 나이: {age2} 시력 : {eyesight2}")

# 19 삭제 , 수정 --> 치환 
total = "5,896,124,650"
total = total.replace(",", "")
print( type(total)  )
total = int(total)
print( total + 100 )

# 20 
날짜 = "2024/01(E) 1사분기"
날짜 = 날짜[0:7]
print(f"{날짜}")
print(날짜)

날짜 = "2024/01(E) 1사분기"
날짜 = 날짜.split("(")
print(날짜[0])

data = "       공백제거하기       "
data = data.strip()
print( f"공백제거한값은 {data}")

lowerWord = "python is very good"
print( lowerWord.upper() )

upperWord = "PYTHON IS VERY GOOD"
print( upperWord.lower() ) 

capitalizeWord = 'python quiz'
print( capitalizeWord.capitalize() )

fileName = "abc.csv"
print( fileName.endswith("csv") )

if fileName.endswith("csv") :
    print("엑셀파일입니다")

fileName = "abc.csv"
fileName.endswith("csv" or "xlsx")