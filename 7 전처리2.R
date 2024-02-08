# 1. 결측값 
z <- c(1,2,3,NA, 5,NA, 8)
sum( z )
is.na( z )
sum(z, na.rm=T )

m <- mean( z, na.rm=T )
m
sd( z, na.rm = T )
z[ is.na(z)  ] <- 0 # TRUE이면 0으로 대체 
z
# 결측값을 평균으로 대체하기 
z[ is.na(z) ] <- m
z
# 결측값을 대체한 것을 새로운 벡터로 저장하기
z.new <- as.vector( z )

DF <- data.frame(x = c(1, 2, 3), y = c(0, 10, NA))
DF
na.omit(DF) # 결측값이 있는 것을 제외하고 정상값만 반환하기 

z <- c(1,2,3,NA, 5,NA, 8)
z
na.omit.new <- na.omit( z )
na.omit.new
na.new.ds <- as.vector( na.omit.new)
na.new.ds

# 2차원 결측값 처리 방법 찾기, 제거, 수정
x <- iris[1:50, ]
x
x[1,2] <- NA; x[1,3] <- NA; x[2,3] <- NA; x[3,4] <- NA;
head(x)

# 찾기 - 반복문 사용
## 열에 있는 것 결측값의 갯수 세기
ncol(x) # 컬럼의 수 
for( i in 1:ncol(x) ){
   this.na <- is.na( x[ , i ]   ) # TRUE FALSE 
   cat( i, '열  ', sum( this.na ), '\n')
}

# result
1열 0 
2열 1
3열 2
4열 1
5열 0

## 행에 있는 것 결측값의 갯수 세기( 1행~5행까지 구하기 )
nrow(x) # 행의 수 
for( i in 1:5 ){
  this.na <- is.na( x[ i ,  ]   ) # TRUE FALSE 
  cat( i, '행  ', sum( this.na ), '\n')
}


# result
1행 2 
2행 1
3행 1
4행 0
5행 0

ds <- mtcars
ds[2,3] <- NA; ds[3,1] <- NA; ds[2,4] <- NA; ds[4,3] <- NA;

# (1) 각 열별로 결측값이 몇 개인지 출력하시오.
ncol(ds)
for( i in 1:ncol(ds) ){
  this.na <- is.na( ds[ , i] )
  cat( i, '열 ' , sum( this.na ), '개 \n')
}

# (2) 결측값이 포함된 행들의 데이터를 출력하시오.
nrow( ds )
 
idx <- c()
for( i in 1:nrow( ds ) ) {
   if (  sum( is.na( ds[ i, ]  )  )  > 0   ) { # 결측값이 있는 행의 인덱스 구한다. 
       idx <- c( idx, i ) # 인덱스를 넣어준다 
   }
}
idx 
ds[ idx,  ]

head(ds)

# (3) 결측값이 포함된 행은 몇 개인지 출력하시오.
# 방법1 (2)의 결과로 풀기
length( idx )
# 방법2 (2)없이 풀기 
cnt <- 0
for( i in 1:nrow( ds ) ) {
  if (  sum( is.na( ds[ i, ]  )  )  > 0   ) { # 결측값이 있는 행을 구한다. 
    cnt <- cnt + 1 # cnt변수로 갯수를 센다. 
  }
} 
cnt

# (4) 결측값이 포함된 행들을 제외하고 새로운 데이터셋 ds.new를 만들어보시오.
head( ds )
dim( ds )
ds.new <-  na.omit( ds )
head( ds.new )
dim( ds.new )


###########################################
# 특이값( 이상값 )
###########################################
st <- data.frame( state.x77 )
boxplot( st$Income )

# 이상값 구하기 
# 문 Income 이상값은 얼마?
income.out <- boxplot.stats( st$Income )$out
income.out
boxplot( st$Population )
# 문 Population 이상값은 얼마?
popu.out <- boxplot.stats( st$Population )$out
popu.out

# 이상값 제거하기
# 방법 결측 만들고 결측을 제거하기
income.out <- boxplot.stats( st$Income )$out
income.out
st$Income[  st$Income == income.out     ] <- NA
st$Income

popu.out <- boxplot.stats( st$Population )$out
st$Population

#  st$Population 값중에서 popu.out안에 변수값이 있으면 참이고 참이면 NA로  대체        
st$Population[ st$Population %in%  popu.out ] <- NA
st$Population

# NA제거하기 
dim( st )
st.new <- st[ complete.cases( st ),    ]  # NA가 들어 있는 행을 제거하기
dim( st.new )

st.new1 <- st[ , complete.cases( st )  ] # 에러 발생

st.new2 <- na.omit( st )
head( st.new2 )
dim( st.new2 )

# 문제2
# 2. 다음과 같이 mtcars 데이터셋을 mt에 저장한 후 다음 문제를 해결하기 위한 R 코드를 작성하시오.
 
mt <- data.frame(mtcars)
 
# (1) mt의 각 변수(열)들에 대해 특이값이 존재하는지 상자그림을 그려 확인하시오.
dim( mt )
boxplot( mt[, 1] ) 
boxplot( mt[, 2] )
boxplot( mt[, 3] )
boxplot( mt[, 4] ) # 특이값 있다
boxplot( mt[, 5] )
boxplot( mt[, 6] ) # 특이값 있다
boxplot( mt[, 7] ) # 특이값 있다
boxplot( mt[, 8] )
boxplot( mt[, 9] )
boxplot( mt[, 10] )
boxplot( mt[, 11] ) # 특이값 있다

# (2) 특이값이 존재하는 경우 이상치를 NA로 대체하여 저장하시오.
boxplot.stats( mt[,4])$out

for( i in 1:ncol( mt )) {
  outlier <- boxplot.stats( mt[,i])$out
  if( length( outlier ) > 0  ) {
    mt[  mt[  ,i] %in%   outlier, i  ] <- NA
  }
}

mt[, 4 ]  
mt 
# (3) mt에서 NA가 존재하는 행들을 제거하여 mt2에 저장하시오.
mt2 <-mt[ complete.cases(mt),    ]
mt2

mt
mt3<- na.omit( mt )
mt3


# 3. R에서 제공하는 airquality 데이터셋에 대해 다음의 문제를 해결하기 위한 R 코드를 작성하시오.

# (1) airquality를 AQ에 저장하시오.
AQ <- airquality 
head( AQ )
class( AQ )
dim( AQ )
str( AQ )
# (2) AQ에서 열별로 NA의 개수를 출력하시오.
for( i in 1:ncol( AQ ) ) {
  cnt <- sum(  is.na( AQ[  , i  ]))
  cat( names( AQ[i] ) , '의 결측값 : ', cnt, '개 ', '\n' )
}

# result는? 
Ozone :  ?개
Solar.R : ?개

# (3) AQ에서 행별로 NA의 개수를 출력하시오.
for( i in 1:nrow( AQ) ){
  cnt <- sum( is.na( AQ[ i,   ] ))
  cat( i, '행의 결측값의 갯수 : ' , cnt, '개 \n')
}

# (4) AQ에서 NA를 포함하지 않은 행들만 출력하시오.
AQ.notNA <- na.omit( AQ )
AQ.notNA

AQ.notNA2 <- AQ[ complete.cases(AQ), ]
AQ.notNA2

# (5) AQ에서 NA를 NA가 속한 열의 평균값으로 치환하여 AQ2로 저장하고, AQ2의 내용을 출력하시오.
col.mean = colMeans( AQ, na.rm=T )  # NA를 빼고 칸의 평균을 구함, NA없는 칸은 칸의 평균 
col.mean
AQ2 <- AQ
for( i in 1:ncol( AQ2) ){
  AQ[  is.na( AQ2[ , i]   )    , i ] <- col.mean[ i ]
}
head( AQ )

######################################
## 정렬
######################################
head( iris )
sort( iris$Sepal.Length  )
sort( iris$Sepal.Length, decreasing = T )

order( iris$Sepal.Length ) # iris$Sepal.Length으로 오름차순 정렬한다. 원래 행의 위치를 반환한다
head( iris, n = 15 )

iris[  order( iris$Sepal.Length ) ,  ]
iris[  order( iris$Sepal.Length, decreasing = T ) ,  ]

# 4. R에서 제공하는 state.x77 데이터셋에 대하여 다음 문제를 해결하기 위한 R 코드를 작성하시오.

# (1) state.x77 데이터셋을 Population(인구수)를 기준으로 오름차순 정렬하시오.
class( state.x77 ) # 자료형은 matrix
dim( state.x77 )
order( state.x77[,'Population'] )
state.x77[  order( state.x77[,'Population'] ),   ]
head( state.x77 )

# (2) state.x77 데이터셋을 Income(소득)을 기준으로 내림차순 정렬하시오.
order( state.x77[, 'Income'], decreasing = T )
state.x77[ order( state.x77[, 'Income'], decreasing = T ),  ]

# (3) Illiteracy(문맹률)가 낮은 상위 10개 주의 이름과 문맹률을 출력하시오.
# 문맹률 내림 차순
temp <- state.x77[ order( state.x77[, 'Illiteracy'], decreasing = T),  ]
head( temp, n=15)
temp[ 1:10, 'Illiteracy'] 

######################################
## 분리 - 그룹별로 분석하기 
######################################

str( iris ) 
sp <- split( iris, iris$Species ) # split( 데이터셋, 분류하려는 열이름) 품종별로 잘라내기(구분) 
sp
summary( sp )
sp$setosa
sp$versicolor

# 5. R에서 제공하는 mtcars 데이터셋에 대하여 다음 문제를 해결하기 위한 R 코드를 작성하시오
# 
# (1) mtcars 데이터셋을 gear(기어)의 개수에 따라 그룹을 나누어 mt.gear에 저장하시오.(단, split() 함수를 사용하시오.)
mt.gear <- split( mtcars, mtcars$gear )
mt.gear
str(mtcars)
# (2) mt.gear에서 gear(기어)의 개수가 4인 그룹의 데이터를 출력하시오.
mt.gear$`4` 

# (3) mt.gear에서 gear(기어)의 개수가 3인 그룹과 5인 그룹의 데이터를 합쳐서 mt.gear.35에 저장하고 내용을 출력하시오.
mt.gear.3 <- mt.gear$`3`
mt.gear.5 <- mt.gear$`5`
mt.gear.35 <- rbind( mt.gear.3,  mt.gear.5 ) 
mt.gear.35

# (4) mtcars 데이터셋에서 wt(중량)가 1.5~3.0 사이인 행들을 추출하여 출력하시오

# subset( 데이터셋, 조건절 ) 조건에 만족하는 데이터를 추출한다. 
subset( mtcars, wt>=1.5 & wt<=3.0 )


# R에서 내장된 데이터셋을 사용하는 데 오류가 난다면 
# 
# library( datasets )
# data( iris )
# data(mtcars)

 subset( iris, Species == 'setosa')
subset( iris, iris$Sepal.Length > 7.6, select=c(Sepal.Length,Species  )  ) # 또는  
subset( iris, iris$Sepal.Length > 7.6  )[ ,  c('Sepal.Length','Species' )] 

######################################
## 샘플링 - sample( 데이터셋, size=갯수, replace=F) 
######################################
x <- 1:100
set.seed(100) #임의의 추출할때 씨앗 
sample( x, size=10, replace = F) 
idx <- sample( 1:nrow(iris), size=20, replace = F ) 
idx
iris[ idx, ]

# 8. mtcars 데이터셋에서 10개의 행을 임의로 추출하여 mt10에 저장하고, 나머지 행들은 mt.other에 저장하시오. 그리고 mt10과 mt.other의 내용을 출력하시오.
set.seed(100)
idx <- sample( 1:nrow( mtcars ), size=10, replace=F ) 
idx

mt10 <- mtcars[ idx,  ]
mt10

mt.other <-  mtcars[ -idx, ]
mt.other

# 9. iris 데이터셋에서 각 품종별로 10개의 행을 임의로 추출하여 iris.10에 저장하고, iris.10의 내용을 출력하시오. (품종정보와 품종별 행의 개수를 알고 있다고 가정)
idx2 <- sample( 1:nrow(iris), size=10, replace=F  )
idx2
iris.10 <-  iris[ idx2, ]
iris.10

######################################
## 조합 - combination( 데이터셋, 뽑는갯수)  경우의 수
######################################
combn( 1:5, 3)
combn( 1:4, 2 )

# 11. iris 데이터셋에서 3개의 Species(품종)를 2개씩 짝지어 출력하시오.
sp <- unique(iris$Species)
sp
combn( sp, 2)

# 12. banana, apple, melon, peach, mango를 3개씩 짝지어 출력하시오.
fruits <-  c('banana', 'apple', 'melon', 'peach', 'mango') 
combn( fruits, 3)

######################################
## 집계 - aggregate( 데이터셋, by=그룹명, FUN=함수명
######################################
aggregate( iris[, 1:4], by=list( iris$Species),  FUN=mean ) 
aggregate( iris[, 1:4], by=list( 품종 = iris$Species),  FUN=mean ) 
aggregate( iris[, 1:4], by=list( 품종 = iris$Species),  FUN=sum )  
aggregate( iris[, 1:4], by=list( 품종 = iris$Species),  FUN=sd ) 
aggregate( iris[, 1:4], by=list( 품종 = iris$Species),  FUN= max ) 
aggregate( iris[, 1:4], by=list( 품종 = iris$Species),  FUN=min ) 

aggregate(mtcars, by=list( cyl=mtcars$cyl ), FUN=mean )
aggregate(mtcars, by=list( cyl=mtcars$cyl, vs=mtcars$vs ), FUN=mean )

# 7. mlbench 패키지에서 제공하는 Ionosphere 데이터셋에 대해 다음의 문제를 해결하기 위한 R 코드를 작성하시오.
 
# (1) 다음과 같이 Ionosphere 데이터셋을 myds에 저장하시오.

library(mlbench)
data("Ionosphere")
myds <- Ionosphere
myds 
# (2) myds에서 class 와 V1열의 값을 그룹으로 하여 V3~V10 열의 값들의 표준편차를 출력하시오. (주의: 집계 작업시 팩터 타입의 열은 제외해야 한다).
aggregate( myds[, 3:10], by=list( 구분=myds$Class, V1 = myds$V1 ), FUN=sd )

# 14. 다음 문제를 해결하기 위한 R 코드를 작성하시오.
# 
# (1) 제공된 파일 중 subway.csv와 subway_latlong.csv 파일을 읽은 후 병합하여 subway.tot에 저장하시오(병합 기준 열은 STATION_CD와 station).
subway <- read.csv( 'D:/ai/study/r_study/subway.csv', header = TRUE, fileEncoding = "CP949", encoding = "UTF-8")
subway.latlong <- read.csv( 'd:/ai/study/r_study/subway_latlong.csv', header = TRUE, fileEncoding = "CP949", encoding = "UTF-8")
subway
subway.latlong 

subway.tot <-  merge( subway, subway.latlong, by.x = c('station'), by.y=c('STATION_CD'),  )
head( subway.tot ) 
head( subway )
head( subway.latlong)
# (2) subway.tot에서 역 이름과 날짜를 기준으로 on_tot(탑승 인원)과 off_tot(하차 인원)을 집계(합계)하여 출력하시오.
 
agg <- aggregate( subway.tot[, c(  'on_tot','off_tot'   )],  
                  by=list( 역이름=subway.tot$stat_name, 날짜=subway.tot$income_date   ), 
                  FUN=sum )
head( agg )
tail( agg )
# (3) subway.tot에서 2011년도에 대해서만 역 이름을 기준으로 on_tot(탑승 인원)과 off_tot(하차 인원)을 집계(합계)하여 출력하시오. ????? 문제가 있다. income_date가 실제내용이 7340??? - 다시 풀기 
year.2011 <- subway.tot$income_date >= 20110101 & subway.tot$income_date <= 20111231 
year.2011  

agg.2011 <- aggregate( subway.tot[  year.2011   , c(  'on_tot','off_tot', 'income_date'   )],  
                       by=list( 역이름=subway.tot$stat_name[ year.2011 ]   ), 
                       FUN=sum ) 
head( agg.2011 )
# (4) subway.tot에서 2011년도에 대해서 LINE_NUM(호선)별 on_tot(탑승 인원)과 off_
# tot(하차 인원)을 집계(합계)하여 출력하시오.


