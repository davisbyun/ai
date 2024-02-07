month=1:12
late1 <- c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 <- c(4,6,5,8,7,8,10,11,6,5,7,3)
late3 <- c(1,4,6,2,4,5,1,3,2,0,1,3)

plot( month, late1, main='월별 지각학생수',
      type='b', col='red', xlab='월', ylab='지각인원수', 
      ylim=c(1,15))
lines( month, late2, col='blue', type='b' )
lines( month, late3, col='green', type='b')

# 분석할 내용
# 미국 보스턴 지역의 주택가격정보와 주택가격에 영향을 미치는 요인 분석하기
# 1. 자료가져오기
install.packages('mlbench') # 패키지를 다운 받기
library(mlbench) # 다운받은 자료를 사용할 수 있게 열어 주기
data( 'BostonHousing') #라이브러리안에 있는 여러 데이터셋중 한개를 사용하기 

# 자료의 기본 모습 검색하기
BostonHousing
head( BostonHousing )
class( BostonHousing )
dim( BostonHousing )
str( BostonHousing )

# 2 분석할 데이터 셋 준비
myds <- BostonHousing[, c('crim', 'rm','dis','tax','medv')]
head( myds )
## 2-1 필요한 변수 만들기 
grp <- c()
for( i in 1:nrow(myds) ){
  if(myds$medv[i] >= 25.0 ) {
      grp[i] <- 'H'
  } else if( myds$medv[i] <= 17.0 ){
    grp[i] <- 'L'
  }else{
    grp[i] <- 'M'
  }
}
head( grp )
class( grp )
grp <- factor( grp )     #문자형 자료를 범주형자료(factor) 형 변환, 알파벳 순서대로 만들어짐 
class( grp )
head( grp )
grp <- factor( grp, levels=c('H','M','L')) # factor의 순서를 사용자가 정의하기 
head( grp )

head( myds )
myds <- data.frame(  myds, grp )
head( myds )

# 3. 기본적 내용 파악
str( myds )
head( myds )
table( myds$grp ) #도수분포표 

# 4. 챠트를 그려서 분석 (실제값으로 해석하기 )
par( mfrow=c(2,3))
for( i in 1:5 ){
  hist( myds[, i], main=colnames( myds)[i], col='yellow',
        ylim=c(0, 300))
}
par( mfrow=c(1,1))
par( mfrow=c(2,3))
for( i in 1:5){
  boxplot( myds[i], main=colnames( myds)[i] )
}

# 그룹별 관측값 분포 확인
par( mfrow=c(1,1))
#     구할려는값(y축) ~ 그룹화할변수(x축), data=데이터셋 
boxplot(myds$crim~myds$grp, data=myds, main='1인당 범죄율'  )

boxplot(myds$rm~myds$grp, data=myds, main='방의 갯수에 따른 분류')
boxplot(myds$tax~myds$grp, data=myds, main='세금에 따른 분류')

# 다중 산점도를 통한 변수간 상관관계 확인
pairs( myds[, 1:5])

head(grp)
# levels를 숫자로 바꾸기 H-1 M-2 L-3
point <- as.integer( myds$grp )
unique( point )
head( point )
color <- c('#ff0000', '#00ff00','#0000ff')
pairs( myds[, 1:5], main='보스턴 주택가격 영향 요소',
       col=color, pch=point )

# 상관계수 구하기 
cc <- cor( myds[, 1:5] )
cc[1,1:5]
cc[5,1:5]
# 1에 가까우면 강한 상관관계 비례관계
# -1에 가까우면 강한 상관관계 반비례관계
# 0에 가까우면 약한 상관관계 상관없다 