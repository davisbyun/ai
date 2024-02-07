class( mtcars )
head( mtcars )
wt<- mtcars$wt
mpg <- mtcars$mpg
plot( wt, mpg, main="중량-연비 그래프",
      xlab='중량', ylab='연비', col='red', pch=8)

vars <- c('mpg','disp','drat','wt')
target <- mtcars[, vars]
target
pairs( target )

head( iris )
iris.2 <- iris[, 3:4]
iris.2
point <- as.numeric( iris$Species  )  # as.numeric("품종종료") 숫자로 바꿔라 
point
color <- c('red','green','blue')
plot( iris.2, main="붓꽃의 꽃잎길이와 너비 관계" ,
              pch=c(point), 
              col=color )

library(mlbench)
data('BostonHousing')
head( BostonHousing )
str( BostonHousing )

x <- c(2,3,5,6)
y <- c(4,3,3,10)
tbl <- data.frame(x,y)
tbl
cor( x, y ) #상관계수 계산하기 

beers = c(5,2,9,8,3,7,3,5,3,5) 			# 자료 입력 
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07, 	# 자료 입력
         0.06,0.02,0.05)
tbl<- data.frame( beers, bal)
plot( bal~beers, data=tbl, col='red', pch=9)
res <- lm(bal~beers, data=tbl )
res
abline( res )
cor( beers, bal )


head(iris)
tbl2<- iris[, 1:4]
class( tbl2 )
plot( tbl2 )

t1 <- iris$Petal.Length
t2 <- iris$Petal.Width
tbl3 <- data.frame(t1,t2 )
tbl3
plot( t1, t2 )
res1 <- lm( t1, data=tbl3)
res1
abline( res ) # ???
cor( t1, t2)

cor( iris[, 1:4])

# 월별 지각생의 수를 선그래프로 표현
month=1:12
late=c(5,8,7,9,4,6,12,13,8,6,6,4)
plot( month, late, main="월별 지각생수", type='o', lty=1, lwd=4, 
      col='#10f011')


# 시나리오 
# 미국 보스턴 지역 주택 가격에 영향을 미치는 항목은 무엇인가?

#외부에 있는 데이터셋의 패키지 다운로드하기 
install.packages('mlbench')
library( mlbench ) #R studio에다가 해당 라이브러리 사용하겠다(활성)고 하는 것
data( 'BostonHousing') # 패키지의 라이브러리안에 해당 데이터셋 가져오기

head(  BostonHousing )
dim( BostonHousing )
class( BostonHousing )
str( BostonHousing )

# 필요한 열만 추출
myds <- BostonHousing[, c('crim','rm', 'dis', 'tax','medv' )]

# 3. 분석상 필요한 열을 만들어서 데이터셋에 추가하기
grp <- c()
for( i in 1:nrow( myds )) {
  if( myds$medv[i] >= 25.0 ) {
     grp[i]='H'
  }else if( myds$medv[i] <= 17.0 ) {
    grp[i]='L'
  } else{
    grp[i]='M'
  }
}
class( grp )
class( myds )

grp <- factor( grp ) # 자료안 내용이 범주형 고정 자료 
class( grp )
grp
levels( grp ) # fortor 종류들 보기 
# levels의 위치를 알파벳순에서 사용자순으로 변경하기 
grp <- factor( grp, levels=c('H','M','L') )
levels( grp )

myds <- data.frame( myds, grp)
head( myds )

# 4. 데이터셋의 형태와 기본적인 내용 파악
str( myds )
table( myds$grp )
dim( myds )
class( myds )
summary( myds[, 1:4] )

# 4. 차트로 그리기 연속형 자료니깐 히스토그램, boxplot
par( mfrow = c(2,3) )
for( i in 1:5){
  hist(myds[, i], main=colnames( myds)[i], col='yellow',
       xlab=colnames( myds)[i], ylab='빈도수'
      )
}
par( mfrow=c(1,1) )

