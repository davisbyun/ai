#1 결측값
z <- c(1,2,3,NA,5,NA,8)
sum(z)
is.na(z)
sum(z, na.rm = T)

m<- mean(z, na.rm = T)
m

sd(z, na.rm = T)
z[is.na(z)] <- 0
z

z[is.na(z)] <- m
z

z.new <- as.vector(z)
z.new

DF <- data.frame(x = c(1, 2, 3), y = c(0, 10, NA))
DF
na.omit(DF)

z <- c(1,2,3,NA,5,NA,8)
z
na.omit.new <- na.omit(z)
na.omit.new
na.new.ds <- as.vector(na.omit.new)
na.new.ds


x <- iris[1:50, ]
x

x[1,2] <- NA; x[1,3] <- NA; x[2,3] <- NA; x[3,4] <- NA; 
head(x)
ncol(x)
for(i in 1:ncol(x) ){
  this.na<-is.na(x[, i])
  cat(i,'열 ', sum(this.na), '\n' )
}

nrow(x) 
for(i in 1:5)){
  this.nb <- is.na(x[i ,])
  cat(i, '행' , sum(this.nb), '\n')
  
}


mtcars
ds <- mtcars
ds[2,3] <- NA; ds[3,1] <- NA; ds[2,4] <- NA; ds[4,3] <- NA
ds
ncol(ds)
for(i in 1:ncol(ds)) {
  this.na <- is.na(ds[, i])
  cat(i, '열', sum(this.na), '개\n')
}


nrow(ds)
idx <- c()
for( i in 1:nrow(ds)){
  if(sum(is.na(ds[i,])) >0) {
    idx <- c(idx, i)
  }
}
idx

length(idx)


cnt <- 0
for( i in 1:nrow(ds)){
  if(sum(is.na(ds[i,])) >0) {
    cnt <- cnt+ 1
  }  
}
cnt



head(ds)

dim(ds)
na.omit.new <- na.omit(ds)
na.omit.new


st <- data.frame(state.x77)
boxplot(st)
boxplot(st$Income)
income.out <- boxplot.stats(st$Income)$out
income.out

pop.out <- boxplot.stats(st$Population)$out
pop.out


income.out <- boxplot.stats(st$Income)$out
income.out
st$Income[ st$Income == income.out   ] <- NA
st$Income

popU.out <- boxplot.stats(st$Population)$out
popU.out
st$Population
st$Population[ st$Population %in% popU.out   ] <- NA
popU.out

st$Population
dim(st)
st.new <- st[ complete.cases(st),  ]
st.new
dim(st.new)

st.new2 <- na.omit(st)
head(st.new2)
dim(st.new2)

mt <- data.frame(mtcars)
mt
dim(mt)
boxplot(mt[, ] )

for(i in 1:ncol(mt)) {
  outlier<- boxplot.stats(mt[, i])$out
    if( length(outlier) > 0 ) {
       mt[ mt[, i ] %in%  outlier , i ] <- NA
    }
}

mt

mt2 <- mt[complete.cases(mt) , ]
mt2

mt
mt3 <- na.omit(mt)
mt3


AQ <- airquality
head(AQ)
class(AQ)
dim(AQ)
str(AQ)

for(i in 1:ncol(AQ)) {
  cnt <- sum(is.na(AQ[, i])) 
  cat(names(AQ[i]), '의 결측값 : ', cnt, '개', '\n' )
}

for(i in 1:nrow(AQ)) {
  cnt <- sum(is.na(AQ[i, ]))
  cat(i, '행의 결측값의 갯수 : ', cnt, '개\n')
}
AQ.not <- na.omit(AQ)
AQ.not
dim(AQ.not)

AQ.not2 <- AQ[complete.cases(AQ), ]
AQ.not2
dim(AQ.not2)


col.mean <- colMeans(AQ, na.rm=T)
col.mean
AQ2 <- AQ
for(i in 1:ncol(AQ2)) {
  AQ2[ is.na(AQ2[, i]), i] <- col.mean[i]
}
head(AQ)


head(iris)
sort(iris$Sepal.Length)
sort(iris$Sepal.Length, decreasing = T)

order(iris$Sepal.Length)
head(iris, n=15)


iris[order(iris$Sepal.Length),   ]

iris[order(iris$Sepal.Length),  decreasing = T   ]

state.x77
class(state.x77)
dim(state.x77 )
order(state.x77[ , 'Population']  ) 
state.x77[order(state.x77[, 'Population'])]
head(state.x77)     

order(state.x77[, 'Income'], decreasing = T )
state.x77[ order(state.x77[,  'Income'], decreasing = T ), ]

temp <- state.x77[ order(state.x77[, 'Illiteracy'] , decreasing = T), ]
head(temp, n=15)
temp[1:10, 'Illiteracy']


str(iris)
sp <- split( iris, iris$Species )
sp

summary(sp)
sp$setosa

str(mtcars)
mt.gear <- split(mtcars, mtcars$gear)
mt.gear
mt.gear$`4`

mt.gear.3 <- mt.gear$`3`
mt.gear.5 <- mt.gear$`5`
mt.gear.35 <- rbind(mt.gear.3, mt.gear.5)
mt.gear.35

subset(mtcars, wt>=1.5 & wt<=3.0)

subset(iris, Species == 'setosa')
subset(iris, iris$Sepal.Length >7.6 , select=c(Sepal.Length, Species) )
subset(iris, iris$Sepal.Length >7.6)[ ,  c('Sepal.Length', 'Species') ]

str(iris)

Sys.getlocale()
df <- read_csv("C:\Users\tj\Downloads\SeoulGosi_20230101.csv", locale=locale("ko", encoding="euc-kr"))

x <- 1:100
set.seed(100)
sample(x, size=10, replace = F)
idx <- sample(1:nrow(iris), size=20, replace=F)
idx
iris[idx ,]


set.seed(100)
idx <- sample(1:nrow(mtcars), size=10, replace = F)
idx
mt.other <- mtcars[idx  , ]
mt.other

idx2<- sample(1:nrow(iris), size = 10, replace = F)
idx2
iris.10 <- iris[idx2, ]
iris.10


ex_data <- read.csv("D:/ai/study/r_study/SeoulGosi_20230101.csv")
View(ex_data3)


combn(1:5, 3)
combn(1:4, 2)

x = c("red","green","blue","black","white")
com <- combn(x, 2)
com


iris
sp <- unique(iris$Species)
sp
combn(sp, 2)

fruits <- c('banana', 'apple', 'melon', 'peach', 'mango')
combn(fruits, 3)


agg <- aggregate(iris[,-5], by=list(iris$Species), FUN=mean)
agg

agg <- aggregate(iris[,-5], by=list(품종=iris$Species), FUN=mean)
agg

agg <- aggregate(iris[,-5], by=list(품종=iris$Species), FUN=sum)
agg

agg <- aggregate(iris[,-5], by=list(품종=iris$Species), FUN=sd)
agg

agg <- aggregate(iris[,-5], by=list(품종=iris$Species), FUN=max)
agg

aggregate(mtcars, by=list(cyl=mtcars$cyl), FUN = mean)
aggregate(mtcars, by=list(cyl=mtcars$cyl, vs=mtcars$vs), FUN = mean)

library(mlbench)
data("Ionosphere")
myds <- Ionosphere
myds

aggregate(myds[, 3:10], by=list(구분= myds$Class, V1 = myds$V1), FUN = sd)


subway <- read.csv('d:/ai/study/r_study/subway.csv', header=TRUE, fileEncoding = 'cp949',encoding = "UTF-8")
subway.latlong <- read.csv('d:/ai/study/r_study/subway_latlong.csv',header=TRUE, fileEncoding = 'cp949',encoding = "UTF-8")

subway
subway.latlong

subway.tot <- merge(subway, subway.latlong, by.x=c('station'), by.y = c('STATION_CD'),  )
head(subway.tot)

agg <- aggregate(subway.tot[, c('on_tot','off_tot')], by=list(역이름=subway.tot$stat_name, 날짜=subway.tot$income_date), FUN=sum  )
agg

year.2011 <- subway.tot$income_date >=20110101 & subway.tot$income_date <= 20111231
year.2011





