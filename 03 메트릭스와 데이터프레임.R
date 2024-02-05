# 메트릭스와 데이터 프레임

z <- matrix( 1:30, nrow = 5, ncol=6, byrow = T)
z
z <- matrix( 101:200, nrow = 10, ncol=10)
z

x <- 1:5  # 1차원 벡터
y <- 8:12 # 1차원 벡터
x
y
# 2차원 매트릭스
# 칸으로 합치기
sum.xy <- cbind( x, y)
sum.xy

# 줄(row)합치기
sum.xy1 <- rbind(x, y)
sum.xy1

#  1~5
# 101~105
# 201~205
n1 <- 1:5
n2 <- 101:105
n3 <- 201:205
bind.n123 <- rbind(n1,n2,n3)
bind.n123

# matrix 한번에 만들기
z <- matrix( 12:1 , nrow=3, ncol=4, byrow = T  )
z
rownames(z) <- c('v1','v2','v3') # 행의 이름
z

# 또는 1행씩 만들어서 합치기
v1 <- 12:9
v2 <- 8:5
v3 <- 4:1
z1 <- rbind( v1, v2, v3)
z1

# 5를 검색하기
z1[2,4]
z1[3,2]

z1[1, ]
z1[, 2]
# 1행 3행 
z1[ c(1,3), ]
# 2열, 4열 
z1[   ,  c(2,4)  ]
# 2열~4열 
z1[ , c(2,3,4)]
z1[ , 2:4 ]

# 행이름 주기
# 열이름 주기 
score <- matrix( c(90,85,69,78, 85,96,49,95, 90,80,70,60 ), nrow=4, ncol=3 )
score                
# 행이름 주기
rownames(score) <-c('John','Tom','Mark','Jane')
# 열이름 주기
colnames(score) <- c('English','Math', 'Science')
score[2,2]
score['Jane', 'Science']  # score[4,3]
score['Jane', 'English']
# Tom점수를 검색하기
score[ 'Tom', ]
# Math점수를 검색하기
score[  ,  'Math' ]
# Math점수의 평균을 구하기 
mean(  score[  ,  'Math' ] )
# 학생(행)은 이름?
rownames( score )
# 과목명(열)은? 
colnames( score )
# 2번째 학생명은?
rownames( score )[2]
# 3번째 과목명은?
colnames(score)[3]

# 1번문제 
# (1)
z <- matrix(12:1, nrow=3, ncol=4, byrow = T)
z
rownames(z) <- c('v1','v2','v3')
z
# (2) 매트릭스 z의 열 이름을 각각 a1, a2, a3, a4로 바꾸시오.
colnames(z) <- c('a1','a2','a3','a4')
z
# (3) 매트릭스 z에 1~7 사이의 홀수로 구성된 벡터 v4를 행 방향으로 추가하시오.
v4 <- c( 1,3,5,7) 
z <- rbind( z, v4 )
z
# (4) 4행에 있는 모든 값을 출력하시오.
z[4, ]
# (5) 2~4행의 값 중 a1, a3열에 있는 값을 출력하시오.
z[2:4, c( 'a1', 'a3' ) ]

# (6) 매트릭스 z의 세 번째 행의 이름을 출력하시오.
rownames( z )[3]
# (7) 매트릭스 z의 세 번째 열의 이름을 출력하시오.
colnames(z)[3]

## #### 데이터 프레임
# 만들기
city <- c('서울','도쿄','워싱턴')
rank <- c(1,3,2)
etc <- c(TRUE, TRUE, FALSE)
city.info <- data.frame(city, rank, etc )
city.info
city.info[2, 'city']
city.info[1, 'rank']
rownames(city.info)
colnames( city.info )

# 행과 열을 바꾸기
t(city.info) # trainsation 변환 




iris
head( iris, n=10 )
tail( iris )

head( iris[, c(1:2)] )
head( iris[, 'Petal.Width'])

dim(iris) # 행의 갯수, 열의 갯수
str( iris ) # 구조
iris[, 5 ]
unique(  iris[, 5 ]  ) # 중복제거
table(iris[,"Species"]) # 품종별로 갯수 세기

colSums( iris[ , -5] )
colMeans( iris[ , -5] )
rowSums( iris[ , -5])
rowMeans( iris[, -'Species']) # 오류 발생 ??


# 문제 2
state.x77 
head( state.x77 )
dim( state.x77 )
str( state.x77 )


# (1) state.x77을 변환하여 st에 데이터프레임으로 저장하시오.
  st <- data.frame(state.x77)

# (st <- data.frame(state.x77))
# 
# (2) st의 내용을 출력하시오.
st

# (3) st의 열 이름을 출력하시오.
colnames( st )

# (4) st의 행 이름을 출력하시오.
rownames( st )
 
# (5) st의 행의 개수와 열의 개수를 출력하시오.
nrow( st )
ncol( st ) 
# (6) st의 요약 정보(행열 갯수) 를 출력하시오.
dim( st )
 
# (7) st의 행별 합계와 평균을 출력하시오.
rowSums( st )
rowMeans( st )
# (8) st의 열별 합계와 평균을 출력하시오.
colSums( st )
colMeans( st ) 
# (9) Florida 주의 모든 정보를 출력하시오.
st[ 'Florida',  ]
 
# (10) 50개 주의 수입(Income) 정보만 출력하시오.
st[ , 'Income' ]

# (11) Texas 주의 면적(Area)을 출력하시오.
st['Texas','Area'] 

# (12) Ohio 주의 인구(Population)와 수입(Income)을 출력하시오.
st[ 'Ohio', c( 'Population','Income')] 

# (13) 인구가 5,000 이상인 주의 데이터만 출력하시오.
subset( st, Population>=5000 )  

# 형식 subset( 데이터셋, 조건 )

# (14) 수입이 4,500 이상인 주의 인구, 수입, 면적을 출력하시오.
subset( st, Income>= 4500)[ , c( 'Population', 'Income', 'Area') ]

# (15) 수입이 4,500 이상인 주는 몇 개인지 출력하시오.
nrow( subset( st, Income>= 4500) )

# (16) 전체 면적(Area)이 100,000 이상이고, 결빙일수(Frost)가 120 이상인 주의 정보를 출력하시오.
subset( st, Area>=100000 & Frost >= 120 )
 
# (17) 인구(Population)가 2,000 미만이고, 범죄율(Murder)이 12 미만인 주의 정보를 출력하시오.
subset( st, Population<2000 & Murder < 12 )

# (18) 문맹률(Illiteracy)이 2.0 이상인 주의 평균 수입은 얼마인지 출력하시오.
mean( subset( st,Illiteracy>=2.0 )[, 'Income'] )

# (19) 문맹률(Illiteracy)이 2.0 미만인 주와 2.0 이상인 주의 평균 수입의 차이를 출력하시오.
ill.up2<- mean( subset( st,Illiteracy>=2.0 )[, 'Income'] )
ill.up2
ill.down2 <- mean( subset( st,Illiteracy< 2.0 )[, 'Income'] )
ill.down2
abs( ill.up2-ill.down2 )

# (20) 기대수명(Life Exp)이 가장 높은 주는 어디인지 출력하시오.
max( st[, 'Life.Exp'] ) # 73.6 최대값구하기
subset( st, Life.Exp == max( st[, 'Life.Exp'] ) ) # 해당주의 행을 구하고 
rownames(  subset( st, Life.Exp == max( st[, 'Life.Exp'] ) )   ) # 해당주의 행이름 구하기 
 
# (21) Pennsylvania 주보다 수입(Income)이 높은 주들을 출력하시오.
# 1단계 Pennsylvania주 수입(Income)구하기
Pen.Income <- st[ 'Pennsylvania', 'Income'  ] # 4449
# 2단계 높은 주들
subset( st, Income > Pen.Income )
# 3단계 주들명 출력 (행이름만 출력)
rownames(  subset( st, Income > Pen.Income )  )

# 2.5 연산자
a <- matrix(1:20, 4, 5)
a
b <- matrix(21:40, 4,5)
b

2*a
b-5
a+b
b/a
a*b

class(iris)
class( state.x77 )
class( islands )
class(lh)

is.matrix(iris)
is.data.frame(iris)

# 매트릭스(자료형이 동일한 2차배열)  -> 데이터프레임셋(자료형이 다른 2차배열)
st <- data.frame( state.x77 )  #  # 매트릭스(자료형이 동일한 2차배열)  -> 데이터프레임셋(자료형이 다른 2차배열)
class( st )
class( iris )
as.iM  <- as.matrix(iris[, -5]) # # 매트릭스(자료형이 동일한 2차배열) <- 데이터프레임셋(자료형이 다른 2차배열)
class( as.iM )

# 열추출하기
class(iris)
class(state.x77)
iris[, 'Species'] # 열이름으로 검색 가능

head( state.x77 )
state.x77[, 'Area'] # 열이름으로 검색 가능

iris[  , 5 ]  # 인덱스로 검색 가능
state.x77[, 8] # 가능

iris['Species'] # 열이름으로 검색 가능 데이터프레임만 가능함
state.x77['Area'] # 불가능 

iris[5] # 열에 대한 인덱스 검색 가능 데이터프레임만 가능함
state.x77[8] # 검색 불가능

iris$Species # 데이터프레임$열이름
state.x77$Area # 안됨

# 3문제

# (1) 위와 같은 내용을 가지는 데이터프레임 human을 생성하시오.
# 1단계 각 열별로 벡터 만들기
name <- c('Tom','Jane', "Nick")
age <- c(20,23,26)
gender <- c('M','F','M')
height <- c(180,160,175)
student <- c(TRUE, TRUE, FALSE)
# 2단계 데이터프레임 
human <- data.frame(name, age, gender, height, student)
human
 
# (2) human에 (“Mary”, 24, “F”, 155, TRUE)를 추가하시오(list함수 사용).
human.new <- list( name='Mary', age=24, gender='F', height=155, student=TRUE)
human <- rbind( human, human.new )
human
# (3) 이 데이터셋 열들의 자료형을 보이시오. 
str( human )
# dim( human ) 행열의 갯수
# class( human ) 데이터프레임인지 매트릭스인지 알기 

# (4) 평균 나이(age)와 평균 키(height)를 구하시오.
human$age
human['age']
human[ , 'age']
human[2]
human[,2]

mean( human$age )
mean( human$height )
# (5) 4번째 열을 제외한 human의 열 이름을 출력하시오.
colnames( human[-4] )
# colnames( human[-height] ) 안된다

# (6) 성별(gender) 인원수를 보이시오.
table( human$gender ) 

# 파일 불러오기
setwd("D:/ai/study/r_study")  #파일 불러올 경로명
air <- read.csv('airquality.csv')
air
class(air)

air2 <- read.csv('D:/ai/study/r_study/airquality.csv')
head( air2 )
air2['Ozone']

air3 <- read.csv( file.choose() ) #대화상자로 열어서 파일 불러오기
head( air3 )

# iris에서 Species == 'setosa' 인 것만 저장하기 
iris.setosa <- subset( iris, Species == 'setosa' )
write.csv( iris.setosa, 'irisfilename.csv'  )
#          저장할자료,  파일명 
# 첫째 열에는 열번호가 있다. 이 부분을 저장에서 제외하고 싶다.
write.csv( iris.setosa, 'irisFile1.csv', row.names=F )

# write.csv( iris.setosa,  file.choose() ) 안된다.


