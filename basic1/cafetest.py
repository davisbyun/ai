# letter = 'java programming'
# print(letter[5])

# numN = "43다 6521"
# print( numN[4:] )

# string = "홀짝홀짝홀짝홀짝"
# #짝짝짝짝 출력
# print(string [])

# #문자열을 거꾸로 뒤집어서 출력
phone_number="010-888-9999"
number1 = "010"
number2 = "888"
number3 = "9999"
print(number1,number2,number3, sep=" ")
print(number1,number2,number3, sep="")

#url에 저장된 웹 주소에서 com 만 출력합니다.
url = "http://gmail.com"
print(url[13:])


# lang = "java python"
# lang[0] = "K"
# print(lang[0])
  #lang[0] = "K"
  #   ~~~~^^^
  #TypeError: 'str' object does not         
  #  support   #item assignment

lang = "java python"
lang.replace('j',"k")
# print(lang[0])


# 10. 아래 코드를 실행하면 결과가 어떻게 될까요?

string = "abcdefABCDEFabc"
string = string.replace("c", "!")
print(string)
# b!defABCDEFab!


#11. 아래 코드를 실행하면 결과가 어떻게 될까요?

string = "abcdefABCDEFabc"
print( string.replace("c", "!") )
print(string)
#ab!defABCDEFab!
#abcdefABCDEFabc
#위 문자열은 부분적으로 바꿀 수 없다

#12. 문자열 합치기
a="123"
b="456"
print(a+b)

#13. 문자열 곱하기
#Hi!Hi!Hi!Hi!Hi!
#위와 같이 나오게 코드 작성하기

a ="Hi"
b ="!"
print((str)(a*b))

"""


​

14. "+"기호를 150번 나오게 하기

"++++++++++++++++++++++++++++++++ ...."

​

15.  문자열 더하기와 곱하기 이용하여 아래와 같이 출력하기

s1 = "python"

s2 = "c++"

s3 = "java"

__________________

__________________

​

실행 결과

python c++ java python c++ java  python c++ java  python c++ java  python c++ java  python c++ java 

​

16. 문자열 포매팅으로 출력하기

print포맷팅에서 '%s'는 문자열 데이터 타입 '%d' 정수형 데이터타입 '%f' 실수형 데이터 타입입니다

​

name1 = "홍길동"

age1 = 25

eyesight1 = 1.2

name2 = "이순신"

age2= 13

eyesight2 = 0.8

___________________________

___________________________

​

결과

이름 : 홍길동  나이 : 25 시력 : 1.2

이름 : 이순신  나이 : 13 시력 0.8

​

​

17. 문자열 출력하기

문자열의 format()메서드를 이용하여 풀기

​

name1 = "홍길동"

age1 = 25

eyesight1 = 1.2

name2 = "이순신"

age2= 13

eyesight2 = 0.8

___________________________

___________________________

​

결과

이름 : 홍길동  나이 : 25 시력 : 1.2

이름 : 이순신  나이 : 13 시력 0.8

​

18. 문자열 출력하기

파이썬 3.6부터 f-string을 이용해서 문제 풀기

f-string은 문자열 앞에 f가 붙은 형태입니다. f-string을 사용하면 `{변수}`와 같은 형태로 문자열 사이에 타입과 상관없이 값을 출력할 수 있습니다.

​

name1 = "홍길동"

age1 = 25

eyesight1 = 1.2

name2 = "이순신"

age2= 13

eyesight2 = 0.8

___________________________

___________________________

​

결과

이름 : 홍길동  나이 : 25 시력 : 1.2

이름 : 이순신  나이 : 13 시력 0.8

​

19. 컴마를 제거하기

​

총금액 = "5,896,124,650"

​

총금액에서 "," 를 제거하고 정수형으로 바꾸세요

​

20. 문자열 슬라이싱

​

다음과 같은 문자열에서 '2024/01'만 출력하세요

​

날짜 = '2024/01(E) 1사분기'

​

21. 문자열의 좌우의 공백을 제거해 보세요

힌트 strip()

​

data = "      공백제거하기   "

​

출력결과

공백제거하기

​

22. 소문자로 된 문자열을 대문자로 바꿔 보세요.

​

lowerWord = "python is very good'

​

23. 대문자로 된 문자열을 소문자로 바꿔 보세요.

​

upperWord = 'java language'

​

24. 문자열의 첫글자만 대문자로 바꿔 보세요. 

​

capitalizeWord = 'python quiz'

​

25. 아래의 파일명이 'csv'로 끝 나면 True로 출력하고 아니면 False라고 출력하세요

fileName="abc.csv"

​

힌트 endswitch("csv")

​

26. 아래 파일명이 'csv'로 끝나거 'xlsx'로 끝났으면 True로 출력하고 아니면 False라고 출력하세요

fileName = "abc.xlsx"

​

힌트 endswitch( "csv", "xlsx")


"""