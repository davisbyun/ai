z <- c(1,2,3,NA,5,NA,8)
sum( z )
mean( z )
!is.na( z )
sum(  is.na( z )  )  # TRUE에 대해서 갯수를 구해줌
sum(  !is.na( z )  ) # 결측치가 아닌 것의 갯수를 구해 줌
sum(z, na.rm=T ) # 삭제하기

z1 <- z
z1
z2 <- c(5,8,1,NA,3,NA,7)
z2
sum( is.na(z2)  )
m <- as.integer( mean( z1, na.rm=T ) ) 
m
z1[is.na(z1)] <- m  # z1[TRUE] TRUE 경우에만 0으로 치환됨 
z1

# 결측값을 제거하고 새로운 벡터 생성하기 
z3<- as.vector( na.omit( z2 ) )
z3

# 2차원 결측값 처리
iris
class( iris )
x <- iris 
head( x )

x[1,2] <- NA
x[1,3] <- NA
x[2,3] <- NA
x[3,4] <- NA

head( x )

# 결측값을 찾기 위해서 열에 대한 반복으로 
for( i in 1:nrow(x)){
  for( j in 1:ncol(x)) {
    this.na <- is.na( x[ i, j ] )
      if( this.na ) {
        x[ i, j ] <- 0
      }
  }
} 

head( x )

head( this.na )

is.na( x[1, 2])


