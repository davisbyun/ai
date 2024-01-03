# 문자열 반복 연산자
x="토끼"*10
print( x )
# 64쪽~66쪽  문제 풀어 보기
# 문자열 포맷팅
animal = "고양이"
age = 25
score = 12.52
x = "나는 %s를 좋아하는 %d 살 포인트 점수 %.1f입니다"%(animal,age, score)
print( x )

y="a"
x="%c"%y  # %c 한글자 %s 한글자이상 
print( x ) 

y=8
x="%o"%y # %o 8진수로 표시 
print( x ) 

y=15
x="%x"%y # %x 16진수로 표시 
print( x )  

# %s %c %d %f %o %x 

# 키보드 입력   Scanner sc =new Scanner(System.in); sc.nextInt();
# input()
"""
name = input("이름을 입력하세요")
print( "%s 입니다"%name)

score = input("점수는")
print( type( score )) 
print("%d 점입니다"% (int)(score) )

score =(int) ( input("점수는") )
print( type( score )) 
print("%d 점입니다"% score )

# 실수 반지름 12.5789를 입력 받아서 원넓이(반지름 * 반지름 * 3.14) 를 구하세요
radius = (float) ( input("반지름은?") )
area = radius * radius * 3.14
print("%.3f 원넓이"%area)

"""
# 74
name = "홍지영"
a=10
b=20
print( name, a, b, a-b, 100, sep="")
# 76 널이란? 값이 없는 것 ""  

print("문자열에는 문자 앞 뒤에 쌍따옴표(\")를 \n 붙인다 ")