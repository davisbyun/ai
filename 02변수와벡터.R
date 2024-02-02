2+3
2^3
10%%3
log(10)
log(10, base = 2)
sqrt(4)
max(10,5,9)
abs(-90)
factorial(5)
sin(60)
tan(45)

pi = 3.14 # 변수 선언 방법1
sin(pi/2)

pi <- 3.14 # 변수 선언 방법2 
pi

name <- '홍길동' # <- 단축키로 alt + '-' 누른다 
name

sqrt(-3)
# 1-9
1976/24
# 3 
pi <- 3.14
area1 <- 10*10*pi
area1
area2 <- 12*12*pi
area2
area3 <- 15*15*pi
area3
# 4
log( sqrt(8), base=2  )
log( sqrt(12), base=2  )
log( sqrt(15), base=2  )

#  벡터 1차원 배열  형식 벡터명 <- c(요소1, 요소2...)
x <- c(1,2,3)
x
y <- c('a','b','c')
y
z <- c(TRUE, TRUE, FALSE,FALSE)
z
x <- c(1,3,'a','b')
x # 모두 문자형으로 변형됨
z <- c('a',TRUE)
z # 모두 문자형으로 변형됨
z <- c(1,2,TRUE, FALSE)
z # TRUE가 1로 바뀐다.  FALSE은 0으로 바뀐다.

# 1~10까지 벡터로 만들기
num <- c(1,2,3,4,5,6,7,8,9,10)
num
# 1~100까지 벡터로 만들기 (연속숫자)
num1 <- 1:100
num1
# 200:500까지 벡터 만들기
num2 <- 200:500
num2
# 100~300, 400~500 까지 벡터 만들기
num3 <- c(100:300, 400:500)
num3
# 1 3 5 7 9 .. 99까지 벡터 만들기 1~100까지 증가치 2인 벡터 만들기
# 도움말 help( 함수명 )
help( seq )
seq(from=1, to=100, by=2) # 정식적인 형식
seq( 1, 100, 2) # 약식 
# 99 97 ... 1까지 벡터 만들기
seq(from=99, to=1, by= -2)

# rep 
help( rep )
rep(1:4, 2)
rep(1:4, each=2)
rep(1:4, c(2,3,4,5))
rep(1:4, each = 2, length.out = 4)

# 100~200사이의 짝수로 된 vc.2
vc.2 <- seq( from=100, to=200, by=2 )
vc.2

# 문제 6
vc.3 <- rep( TRUE, 20 )
vc.3

# 벡터에 이름 지정하기
score <- c(90,85,70)
score
names(score) # 벡터의 이름 출력하기 
#벡터의 이름을 넣기
names(score) <- c('김수진','이영미','최진수')

# 부분적으로 출력 
score[1] # 인덱스로 검색
score['이영미'] # 이름으로 검색
score[3]
score['최진수']
score[4]
score['최영미']
score[2:3]
score[ c( '이영미','최진수' ) ]

v1 <- c(1,5,7,8,9)
v1
v1[2] <- 3
v1
# 1, 5번 인덱스값 바꾸기
v1[ c(1,5) ]<- c(10,20)
v1

x <- 10:15
y <- 20:25
x
y
x+y
x*y

x1 <- 10:14
y1 <- 20:26
x1+y1

d <- 1:10
sum(d)
sum(2*d)
length(d)
mean(d)
max(d)
min(d)
sort(d)
sort(d,decreasing = T)
help( sort )

d <- 1:9
d[ d > 5 ]
d[ d !=  5]
# 5~8 그리고
d[ d>5 & d<8 ]

# 7
d <- 100:200
d # (1)
d[10] # (2)
d[1:90] #(3)
d[ d%%2==1  ] # 4
d[ d%%3 == 0 ] # 5
d.20 <- d[1:20] # 6
d.20
d.20[ -5 ] # 7 - 제외하다 
d.20[ -c(5,7,9 ) ] # 8

# 8 (1)
absent <- c(10,8,14,15,9,10,15,12,9,7,8,7)
names(absent) <- c('1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월')
absent
# 8-2 5월(MAY)의 결석생 수를 출력하시오.
absent[5]
absent['5월']
# 8-3 (3) 7월(JUL), 9월(SEP)의 결석생 수를 출력하시오.
absent[ c(7, 9) ]
absent[ c('7월','9월')]
# (4) 상반기(1~6월)의 결석생 수의 합계를 출력하시오.
absent[ 1:6 ]
# (5) 하반기(7~12월)의 결석생 수의 평균을 출력하시오.
absent[ 7:12 ]

# 벡터 d1, d2가 다음과 같을 때 각 문제를 수행하기 위한 코드를 작성하고 답을 구하시오.
d1 <- 1:50
d2 <- 51:100
# (1) d1, d2의 값을 출력하시오.
d1
d2
print(d1)
print(d2)
# (2) d2의 길이(원소의 개수)를 보이시오.
length(d1)
length(d2)
#(3) d1+d2, d2-d1, d1*d2, d2/d1의 각각의 결과를 출력하시오.
d1+d2
d2-d1
d1*d2
d2/d1
#(4) d1, d2의 값들의 합을 각각 출력하시오.
sum(d1)
sum(d2)

#(5) d1, d2에 있는 모든 값들의 합을 출력하시오.
sum(d1) + sum(d2)
sum( c(d1, d2) )
#(6) d2에서 가장 큰 값과 가장 작은 값을 출력하시오. 
max(d2)
min(d2)

#(7) d2와 d1의 값들의 평균값을 각각 구하고 두 평균의 차이를 출력하시오. 
mean(d2)
mean(d1)
mean(d2) - mean(d1)

#(8) d1의 값들을 큰 수에서 작은 수 순서로 정렬하여 출력하시오.
sort( d1, decreasing = T )

#(9) d1과 d2에서 작은 수에서 큰 수 순서로 각각 10개씩을 추출하여 d3에 저장하시오(결과적으로 d3에는 20개의 수가 저장). 
d1[1:10]
d2[1:10]
d3 <- c( d1[1:10], d2[1:10] ) 
d3

# 10. 다음과 같이 벡터 v1을 생성한 다음 각 문제를 수행하기 위한 코드를 작성하고 답을 구하시오(문제를 풀다 보면 v1의 내용이 변경되기도 하는데, 모든 문제는 최초의 v1을 대상으로 하여 해결 할 것).
 v1 <- 51:90

# (1) v1에서 60보다 작은 수를 모두 출력하시오.
v1[ v1<60 ]
# (2) v1에서 70보다 작은 수가 몇 개인지 출력하시오. 
length( v1[ v1<70 ] )

# (3) v1에서 65보다 큰 수들의 합을 출력하시오.
sum( v1[ v1>65 ] )

# (4) v1에서 60보다 크고 73보다 작은 수를 모두 출력하시오.
v1[ v1>60 &  v1 < 73]

# (5) v1에서 65보다 작거나 80보다 큰 수를 모두 출력하시오. 
v1[ v1<65 | v1 > 80 ]

# (6) v1에서 7로 나누었을 때 나머지가 3인 수를 모두 출력하시오.
v1[ v1%%7 == 3 ]

# (7) v1에서 7의 배수들은 값을 0으로 변경하시오.
v1[ v1%%7 == 0 ] <- 0
v1

# (8) v1에서 짝수를 모두 합한 값을 출력하시오. 
sum( v1[ v1%%2 == 0] )
# (9) v1에서 홀수이거나 80보다 큰 수를 모두 출력하시오.
v1[ v1%%2 == 1 | v1>80 ]
# (10) v1에서 3과 5의 공배수(3의 배수이면서 동시에 5의 배수 - 각각의 배수를 그리고) 를 출력하시오.
v1 <- 51:90
v1[v1%%3 ==0 & v1%%5 == 0]

# (11) v1에서 짝수에 대해서만 2를 곱하여 저장하시오. 
v1[v1%%2 == 0] * 2

# (12) v1에서 7의 배수들을 제거한 후 v1의 내용을 출력하시오.
v1 <- v1[v1%%7 != 0]
v1


# list
ds <- c(90,85,70,84)
my.info <- list( name="Tom", age=60, status=TRUE, score=ds )
my.info
my.info[1]
my.info[[1]]
my.info[2]
my.info[[2]]
my.info$score
my.info$status
my.info[[3]]

# factor 범주형 자료(예 동서남북 ) 저장 사용한다. 
bt <- c('A','B','B','O','AB') # vector 만듬
bt.new <- factor( bt ) # factor만들기 
bt.new
bt.new[1:3]
bt.new[-2] # 2번째 인덱스값은 제외하기
levels( bt.new ) # 변수에 저장된 값을 보기 
as.integer(bt.new)
bt.new[6] <- 'A'
bt.new
bt.new[7] <- 'O'
bt.new[8] <- 'C'

nn <- c('동','서','남','북','북','북')
nn.new <- factor(nn)
levels(nn.new)
as.integer(nn.new)
nn.new[7] <- '동'
nn.new[8] <- 'North'

# 11
day <- c('Mon', 'Wed')
people <- list( name="Bill", age=20, gender='M', student=TRUE, day=day)
people

# 12
a <- c('Korea', 'Japan', 'China', 'Korea', 'India', 'China', 'Korea')
f <- factor(a)
f
f[4]
levels( f ) # (4) 팩터 f에 저장된 값의 종류를 출력하시오.
as.integer(f)



a <- 4
b <- 5
c <- a+b
c

x1 <- 6
x2 <- 8
x3 <- 10
y1=2*2+5*x1+10
y1
y2=2*2+5*x2+10
y2
y3=2*2+5*x3+10
y3

val.a <- 10
val.b <- 20
sum.ab <- val.a +val.b
sum.ab
