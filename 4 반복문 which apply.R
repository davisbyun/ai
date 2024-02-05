for( k in 2:9) {
  for( i in 1:9 ) {
      cat( k, ' * ', i, ' = ', k*i, '\n'  )
  }
}

class( iris )
head( iris )  

norow <- nrow(iris)
mylabel <- c() # 빈 벡터 만들기 
for( i in 1:norow ){
  if(iris$Petal.Length[i]<=1.6 ) {
    mylabel[i] <- 'L'
  }else if( iris$Sepal.Length[i]>=5.1){
    mylabel[i] <- 'H'
  }else{
    mylabel[i] <- 'M'
  }
}
mylabel
newds <- data.frame( iris$Petal.Length, mylabel)
head(newds)
table(newds$mylabel)

# 1. 다음의 각 문제를 해결하기 위한 R 코드를 작성하시오.

# (1) 1~100 사이의 정수 중 3의 배수들의 합과 개수를 구하시오. 
sum <- 0
cnt <- 0
for( i in 1:100) {
  if( i%%3 == 0 ){
    sum <-  sum + i
    cnt <-  cnt + 1
  }
}
sum
cnt

# (2) 101~200 사이의 숫자 중 3과 4의 공배수를 출력하시오. 
for( i in 101:200) {
  if( i%%3 == 0 & i%%4==0) {
     print(i)
  }
}

# (3) 24의 약수(1,2,3,4, 6,8 12,24) 를 출력하시오. 
for( i in 1:24){
  if( 24%%i == 0){
     print(i)
  }
}

# (4) 10!을 출력하시오.(단, factorial() 함수를 이용하지 않는다.)  10 X9X 8X 7 6 5 4 3 2 1
fac <- 1
for( i in 10:1){
  fac <-  fac * i
  print(i)
}
fac

# 2번 * 출력
for( i in 1:6){
  for( j in 1:i) {
     cat('*')
  }
  cat('\n')
}

# 3
i <- 1
sum <- 0
while( i <= 9 ){
  sum <-  sum + i^2 
  i <- i + 1
}
sum

#4
score <- 80
result <- ifelse( score>60,  'Pass', 'Fail' )
result

#5. 소수(prime number) - 2 3 5 7 11 는 1과 자기 자신 외에는 나누어 떨어지지 않는 수를 말한다. 2~1000 사이의 소수를 출력하는 R 코드를 작성하시오
prime <-  c()
for( i in 2:1000){
  for( j in 2:i){
     if( i%%j == 0) break 
  }
  if( j==i) 
    prime <- c(prime, i)
}
prime

# 6. 0, 1, 1, 2, 3, 5, 8, 13, 21...... 형태의 수열, 즉 첫 번째 항의 값은 0이고 두 번째 항의 값은 1일 때 이후의 항들은 이전의 두 항을 더한 값으로 만들어지는 수열을 ‘피보나치 수열’이라고 한다. 0에서부터 시작하여 40개의 피보나치 수열을 출력하는 R 코드를 작성하시오.

# 벡터 초기값 0,1 만들기
fibo <- c( 0, 1)
while( length( fibo ) < 40  ){
   f.1 <- fibo[length(fibo) - 1]
   f.2 <- fibo[ length( fibo) ] 
   fibo <- c(fibo, f.1 + f.2)
}
fibo


# apply함수
apply( iris[, 1:4], 1, mean) 
head( iris )
dim( iris )

apply( iris[, 1:4], 2, mean) 

# 7. R의 apply() 함수를 이용하여 다음 문제를 해결하는 R 코드를 작성하시오.
# 
# (1) iris 데이터셋의 행별 합계를 출력하시오.
apply( iris[ , -5], 1, sum )

# (2) iris 데이터셋의 열별 최댓값을 출력하시오.
apply( iris[, -5], 2, max )

# 8. R의 apply() 함수를 이용하여 다음 문제를 해결하는 R 코드를 작성하시오.
# (1) mtcars 데이터셋의 열별 합계를 출력하시오.
head(mtcars)
class( mtcars )
apply( mtcars, 2, sum ) 

# (2) mtcars 데이터셋의 열별 최댓값을 출력하시오.
apply( mtcars, 2, max )

# (3) mtcars 데이터셋의 열별 표준편차를 출력하시오.
apply( mtcars, 2, sd ) 


# 사용자 정의 함수
mymax <- function( x,y ){
                           num.max <- x
                           if( y > x){
                             num.max <- y
                           }
                           return(num.max)
}

mymax( 10, 15 )

myfunc <-  function( x, y){
  sum <- x+y
  mul <- x*y
  div <- x/y
  mod <- x%%y
  return( list( rsum=sum, rmul=mul, rdiv=div, rmod=mod ))
}

result <- myfunc( 20, 10)
result$rsum
result$rmod

# 외부 파일에 있는 사용자 함수를 호출하기 
source('d:/ai/study/r_study/myfunc.r')
a <- myfu( 100, 50)
a$rsum
a$rmul

score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84, 69)
which( score>=85 )
max(score)
which.max( score )
min(score)
which.min(score)

idx <- which( score <= 60)
score[idx] <- 61
score

idx2 <-  which( score>=80)
idx2
score.high <-  score[idx2]
score.high

idx3<- which(iris$Petal.Length>5.0)
idx3
iris.big<- iris[idx3, ]
iris.big

idx4 <- which(iris[, 1:4] > 5.0,  arr.ind = T )
idx4

head( iris )


# 9문제
lgm <- function( x, y){  # 10 8
  result <- 0
  for( i in 1:max(x,y) ){ 
    if( x %% i == 0 & y %% i == 0 ){
      result <-  i;
    }
  }
  return( result )
}  
  
lgm(10, 20)

# 10문제 
maxmin <- function( x ){
  fmax <- max(x)
  fmin <-  min(x)
  return(  list( max=fmax, min=fmin ))
}

v <- c(1,5,0,9,10,50,8)
rv <- maxmin(v)
rv$max
rv$min

# 11. 10명의 몸무게를 저장한 벡터가 다음과 같을 때 질문을 해결하기 위한 R 코드를 작성하시오.
weight <- c(69, 50, 55, 71, 89, 64, 59, 70, 71, 80)

#  (1) 몸무게가 가장 큰 값은 몇 번째에 있나? 
which.max( weight ) 
which( weight == max(weight) )  

#  (2) 몸무게가 가장 작은 값은 몇 번째에 있나? 
which.min(weight)  
which( weight == min(weight) )

#  (3) 몸무게가 61에서 69 사이인 값들은 몇 번째에 있나? 
which( weight >= 61 & weight <= 69)
 
#  (4) 몸무게가 60 이하인 값들만 추출하여 weight.2에 저장하고 내용을 보이시오. 
weight.2 <- which( weight<= 60)
weight.2

# 12. 다음의 문제를 해결하기 위한 R 코드를 작성하시오(which() 함수 사용).
# (1) mtcars 데이터셋에서 연비(mpg)가 가장 좋은 관측값(행)의 내용을 보이시오.
idx <- which.max(mtcars$mpg) 
mtcars[idx,]
# (2) mtcars 데이터셋에서 자동차 중량(wt)이 2~3 사이인 관측값(행)들의 내용을 보이시오.
idx2 <- which( mtcars$wt>=2 & mtcars$wt<=3) 
mtcars[ idx2, ]

# (3) mtcars 데이터셋에서 gear의 수가 3인 자동차 모델의 연비(mpg) 평균값을 구하시오.
idx3 <- which( mtcars$gear == 3) 
mean( mtcars[ idx3, 'mpg' ] )

# (4) mtcars 데이터셋에서 자동차 중량(wt)이 5 이상인 자동차 모델의 연비(mpg) 최댓값을 구하시오.
idx4 <- which( mtcars$wt >= 5)
max( mtcars[idx4, 'mpg'] )
