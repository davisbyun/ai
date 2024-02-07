# 1. R에서 제공하는 cars 데이터셋을 이용하여 속도(speed)와 제동거리(dist)에 대한 산점도를 작성하고, 두 변수 간의 상관관계를 설명하시오(x축: speed, y축: dist).
head( cars )
class( cars )
dim( cars )
str( cars )
plot( speed, dist  )
cor( speed, dist )
# 해설 - 속도 증가할수록 제동거리 증가한다.

# 2. R에서 제공하는 pressure 데이터셋을 이용하여 온도(temperature)와 기압(pressure)에 대한 산점도를 작성하고, 두 변수 간의 상관관계를 설명하시오(x축: temperature, y축: pressure).
head( pressure )
plot( pressure$temperature, pressure$pressure ) 
# 해설 : 온도와 기압은 비례관계이고 강한상관 관계이다.
#      0도~ 250도까지는 동일하지만 250도 이상이되면 급격하게 증가한다
cor( pressure$temperature, pressure$pressure )

# 3. R에서 제공하는 swiss 데이터셋에서 출산율(Fertility), 남성 농업인 비율(Agriculture), 입대시험 고득점자 비율(Examination), 징집대상자 초등 이상 교육 이수 비율(Education) 변수 간 산점도를 작성하고, 상관 관계를 관찰하시오(pairs() 함수 이용).
head( swiss ) 
class( swiss )
str( swiss )
dim( swiss )
pairs( swiss[, 1:4] )
# 4. R에서 제공하는 iris 데이터셋에서 품종(Species) 정보에 따른 꽃잎 길이(Petal.Length)와 꽃잎 폭(Petal.Width)의 분포에 대해 산점도를 통해 알아보시오.
head( iris )
class( iris )
head( iris ) 

plot( iris$Petal.Length,iris$Petal.Width,
      main='꽃잎 길이와 너비',
      pch=as.integer(iris$Species),
      col=c('red','green','blue') 
    )

# 5. 다음은 직장인 10명의 수입과 교육받은 기간을 조사한 자료이다. 산점도와 상관계수를 구하고, 수입과 교육기간 사이에 어떤 상관관계가 있는지 설명하시오.
income <- c(121,99,25,35,40,30,150,24,50,60)
edu <- c(19,20,16,16,18,12,24,12,16,17)
plot( income, edu, type='p' )
cor( income, edu )
# 해석 : 상관계수는 0.869입니다. 비례관계이고 강상관관계입니다. 
#        즉 교육을 많이 받으면 수입 증가함을 알 수 있다.

# 6. 다음은 10일간의 습도와 자전거 대여량을 조사한 자료이다. 산점도와 상관계수를 구하고, 습도와 자전거 대여량 사이에 어떤 상관관계가 있는지 설명하시오.
hy <- c(56,67,89,91,53,41,46,71,80,92)
cycle.rent <- c(92510,74801,27168,33929,89807,92153,92045,75328,48756,21875)
plot( hy, cycle.rent, col='red', pch=19  )
cor( hy, cycle.rent )
# 해석 : 상관계수는 -0.9533이다 음의 강산관관계이다.
#        즉 습도가 높으면 자전거 대여량이 감소한다. 
#        그러므로 이번달에 비가 많이 올 예정이므로 자전거의 대여량이 감소할 것을 #        예상된다. 따릉이를 20%정도 보관할 필요가 있다.

# 7. R에서 제공하는 state.x77 데이터셋에서 Income과 다른 변수들 간의 상관계수를 구하시오. 어느 변수가 Income과 가장 상관성이 높은지 산점도와 함께 설명하시오.
head( state.x77 )
class( state.x77 )
str( state.x77 ) 
dim( state.x77 )
cor( state.x77 )
cor( state.x77 )[2, ] # 결과 보면 HS Grad가 상관관계 제일 높다.  0.6199323

# ii<- state.x77[2, ]
# length( ii )
# hh <- state.x77[ , 6 ]
# length( hh )
# plot( ii, hh  ) # 오류 왜? x의 갯수는 8개, y의 갯수 50개이므로 

# 해석 : 상관관계는 0.6199323 이다. 수입과 가장 상관성이 높은 것은 HS Grad(고등학교 졸업생비율)이다. 
# 수입과 HS Grad는 비례관계이다. 

# 8. 다음은 2015년부터 2020년도까지의 예상 인구수 추계자료이다. 연도를 x축으로 하여 선그래프를 작성하시오.
years <- 2015:2026 
popu <- c(51014,51245,51446,51635,51811,51973,52123,52261,52388,52504,52609,52704)
plot( years, popu, main='예상 인구수', type='b', col='blue')

# 9. 다음은 2014년 4분기부터 2017년 3분기까지 남녀 경제활동참가율을 나타낸 통계자료이다. 연도를 x축으로 하고 남녀를 각각 다른 선과 색으로 표시하는 그래프를 작성하시오(2014년 4분기는 20144, 2015년 1분기는 20151과 같은 형식으로 입력).
year <- c(20144,20151,20152,20153,20154,
          20161,20162,20163,20164,
          20171,20172,20173)
male <- c(73.9,73.1,74.4,74.2,73.5,73,
          74.2,74.5,73.8,73.1,74.5,74.2)
female <- c(51.4,50.5,52.4,52.4,51.9,50.9,
            52.6,52.7,52.2,51.5,53.2,53.1)
plot( year, male, type='b', col='blue', main='남녀 경제활동참가율', ylim=c(50,75) )
lines( year, female, type='b', col='red')

# 10. R에서 제공하는 trees 데이터셋에 대해 다음 문제를 해결하기 위한 R 코드를 작성하시오.
head( trees ) 
class( trees )
dim( trees )
# (1) 나무의 지름(Girth)과 높이(Height)에 대해 산점도와 상관계수를 보이시오.
plot( trees$Girth, trees$Height )
cor(  trees$Girth, trees$Height )

# (2) trees 데이터셋에 존재하는 3개 변수 간의 산점도와 상관계수를 보이시오.
plot( trees )
cor( trees )

# 11. R에서 제공하는 Orange 데이터셋에서 나무의 연령(age)과 나무의 둘레(circumference)에 대해 산점도를 그룹(Tree) 번호별로 점의 색을 달리하여 작성하시오.
head( Orange ) 
class( Orange )
str( Orange )
dim( Orange )

head( Orange$Tree )
levels( Orange$Tree )
# 위에 levels로 보니깐 5까지 되어 있다. 즉 5개의 종류이다. 색을 5개로 지정해야 한다
color <- c('red','orange','green','blue','purple' )
plot( Orange$age, Orange$circumference, col=color, pch=19 )

# 12. mlbench 패키지에서 제공하는 Glass 데이터셋에 대해 다음의 문제를 해결하기 위한 R 코드를 작성하시오.
install.packages('mlbench') 
library( mlbench )
data( 'Glass' )
head( Glass )
str( Glass )
dim( Glass )
# (1) 다음과 같이 Glass 데이터셋을 myds에 저장하시오.
myds <- Glass

# (2) myds에서 Type을 제외한 변수들 간의 분포를 산점도를 통해 보이시오.
myds.notType <- myds[, 1:9]
plot( myds.notType )

# (3) myds에서 Type을 제외한 변수들 간의 분포를 상관계수를 통해 확인하시오.
cor( myds.notType )

# (4) myds에서 Type을 제외한 변수들 간의 분포를 산점도를 통해 보이되 Type을 그룹으로 하여 그룹별로 점의 색을 달리하시오.

plot( myds.notType, col=myds$Type )

# 14. R에서 제공하는 LakeHuron 데이터셋은 호수의 연도별 평균 수위 정보가 저장되어 있다. 다음과 같이 연도(years)와 수위(hlevel) 벡터를 생성한 후 연도를 x축으로 하여 선그래프를 작성하시오. (단, 선의 색은 파랑, 그래프의 이름은 ‘LakeHuron’, y축 레이블은 ‘수위’로 한다.)

LakeHuron

head( LakeHuron )
class( LakeHuron ) # ts time Series 시계열 (날짜별 자료)
str( LakeHuron )
dim( LakeHuron ) # 행열은 없다 NULL
length( LakeHuron ) # 98개 갯수 

years <- 1875:1972
hlevels <-  as.vector( LakeHuron  )

plot( years, hlevels, type='b', col='blue', main='LakeHuron', ylab='수위' )

# 15. R에서 제공하는 AirPassengers 데이터셋은 1949년~1960년 사이의 항공승객수를 월별로 나타낸 것이다. AirPassengers 데이터셋에서 1949, 1955, 1960년의 월별 승객수를 선그래프로 작성하는데, 3개년도의 선의 색을 다르게 하시오. (현재는 AirPassengers 데이터셋에서 직접 데이터를 추출할 수 없으니 AirPassengers 데이터셋을 보고 필요한 자료를 입력하여 사용한다.)

AirPassengers
head( AirPassengers )
class( AirPassengers )
str( AirPassengers )
dim( AirPassengers )
length( AirPassengers )

# 1949년 정보 모두 추출하기
#        시계열객체명, 시작년도, c(시작년도,마지막달) 을 구하기 
window(AirPassengers,   1949,     c(1949, 12 ) )

months <-  1:12 # 1~12월까지 벡터 만들기 
year.1949 <- window(AirPassengers,   1949,     c(1949, 12 ) )
year.1955 <- window(AirPassengers,   1955,     c(1955, 12 ) )
year.1960 <- window(AirPassengers,   1960,     c(1960, 12 ) )

plot( months, year.1949, main='년도별 항공승개수', type='b', col='red', ylim=c(100, 650))
lines( months, year.1955, type='b', col='green')
lines( months, year.1960, type='b', col='blue')

# 16. R에서 제공하는 USAccDeaths 데이터셋은 1973년~1978년 사이의 사고 사망자 숫자를 월별로 나타낸 것이다. USAccDeaths 데이터셋에서 1973, 1975, 1977년의 월별 사망자 숫자를 선그래프로 작성하는데, 3개년도의 선의 색을 다르게 하시오.
USAccDeaths
head( USAccDeaths )
class( USAccDeaths )
str( USAccDeaths )

months <- 1:12
deaths.1973 <- window( USAccDeaths, 1973, c(1973,12) )
deaths.1975 <- window( USAccDeaths, 1975, c(1975,12) )
deaths.1977 <- window( USAccDeaths, 1977, c(1977,12) )

plot( months, deaths.1973, ylim=c(6500, 12000), type='b',
      col='red', main='년도별 사고 사망자수', 
      ylab='사망자수', xlab='월' )
lines( months, deaths.1975, type='b', col='black')
lines( months, deaths.1977, type='b', col='blue')



