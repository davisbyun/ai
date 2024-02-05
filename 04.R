for(k in 2:9) { 
  for(i in 1:9) {
     cat(k, '*',i, '=', k*i, '\n' )
  }
}  


cnt <- 0
sum <- 0

for(i in 1:100 ) {
  if( i %% 3 == 0 ) 
  sum <- sum + i 
  cnt <- cnt + 1
  
  
}

sum
cnt

sum <- 0
i <- 0  

for(i in 101:200 ) {
  if( i%%3 ==0 | i%%4 ==0) 
    sum <- sum +1

  
}

print(sum)


for( i in 1:24) {
  if (24%%i ==0 ) {
    print(i)
  }
}  
  

fac <- 1
for(i in 1:10)
  fac <- fac*i
  print(i)

  
for(i in 1:6) {
    for(j in 1:i) {
    cat('*')
}
  cat('\n')
}    
    
    
i <- 1
sum <- 0

while (i <= 2){
  sum <- sum
}

score <- 80
result <- ifelse(score>60, 'pass', fail )
result


pr <- c()
for(i in 2:1000){
  for(j in 2:i) {
    if(i%%j==0) break
  }
  if(j==i)
    pr <- c(pr, i)
}

pr
  


#피보니치 수열

fibo <- c(0,1)
while ( length(fibo) < 40 )
  f.1 <- fibo(length(fibo)-1)
  f.2 <- fibo(lengtrh(fibo))
  fibo <- c(fibo, f.1+f.2)

  fibo

#apply

apply(iris[, 1:4], 2, mean)  
apply(iris[, -5], 1,  sum)
apply(iris[, 5], 2, max)

head(mtcars)
class(mtcars)
apply(mtcars, 2, max  )
apply(mtcars, 2, sum  )
apply(mtcars, 1, max  )
apply(mtcars, 1, sum  )


  
mymax <- function(x,y) {
  num.max <- x
  if (y > x) {
    num.max <- y
  }
  return(num.max)
}
mymax(10,15)


myfunc <-  function(x,y){
  sum <- x+y
  mul <- x*y
  div <- x/y
  mod <- x%%y
return(list(rsum=sum, rmul=mul, rdiv=div, rmod=mod))
}
rusult <- myfunc(20,10)
result$rsum
result$rmod



# 외부파일에 있는 사용자 함수 호출
source ('d:/ai/study/r_study/myfunc.r')
a <- myfu(100,50)
a$rsum
a$rmul


score <- c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84, 69)
which(score==69)
which(score==100)
which(score>=85)  
max(score)  
which.max(score)  
min(score)

which.min(score)

idx <- which(score<=60)
score[idx] <- 61
which.min(score)
score

idx2 <- which(score>=80)
idx2
score.high <- score[idx2]
score.high

idx3 <- which(iris$Petal.Length>5.0)
idx3
iris.big <- iris[idx3,]
iris.big

idx4 <- which(iris[,1:4 ]>5.0, arr.ind = T)
idx4
head(iris)


lgm <- function(x,y){
  result <- 0
  for(i in 1:max(x,y)){
    if(x%%i == 0 &  y%%i ==0){
      result <- i;
     }
  }
  
return( result )
}
result <- lgm(10,8)
lgm(10,20)

maxmin <- function(x) {
fmax <- max(x)
fmin <- min(x)
return( list(max=fmax, win=fmin))

v <- c(1,5,9,9,29,50)
rv <- maxmin(v)

rv$max
rv$min  

}


weight <- c(69, 50, 55, 71, 89, 64, 59, 70, 71, 80)
which.max(weight)
which.min(weight)
which(  61<= weight  & weight <= 69  )
weight.2 <- which(weight<=60)
weight.2

mtcars
idx5 <- which.max(mtcars$mpg)
mtcars[idx5 ,]

idx2 <- which(mtcars$wt>=2 & mtcars$wt<=3)
mtcars[idx2,]

idx3 <- which(mtcars$gear==3)
mean(mtcars[idx3, 'mpg'])

idx4 <- which(mtcars$wt>=5)
max( mtcars[idx4, 'mpg'])
