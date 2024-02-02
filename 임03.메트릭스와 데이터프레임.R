
z <- matrix(1:30, nrow = 5, ncol = 6, byrow = T)
z
z <- matrix(100:200, nrow=10, ncol=10)
z

#칸으로 합치기
x <- 1:5
y <- 8:12
sum.xy <- cbind(x,y)
sum.xy

#줄로 합치기
sum.xy <- rbind(x,y)
sum.xy

#1~5
#101~105
#201~205

x=1:5
y=101:105
z=201:205
sum.xyz <- rbind(x,y,z)
sum.xyz

z <- matrix(12:1, nrow=3, ncol = 4, byrow=T)
z

rownames(z) <- c('v1','v2','v3')
z

#또는 1행씩 만들어서 합치기
v1 <- c(12:9)
v2 <- c(8:5)
v3 <- c(4:1)
z1 <- rbind(v1,v2,v3)
z1

#5를 검색하기
z1[2,4]
#3를 검색하기
z1[3,2]
#첫번째 줄 검색
z1[1,]
#2열
z1[,2]
#1,3행
z1[c(1,3),]
#2,4열
z1[,c(2,4)]
#2~4열
z1[,c(2:4)]
#행 이름주기
#열 이름주기
score <- matrix(c(90,85,69,78, 85,96,49,95, 90,80,70,60), nrow=4, ncol=3)
rownames(score) <- c('John', 'Tom', 'Mark', 'Jane')
colnames(score) <- c('English','Math','Science')
score
score[2,2]
score[4,3]
score['Jane','Science']
score['Jane','English']
#Tom의 점수 검색
score['Tom',]
#Math
score[,'Math']
#Math의 평균
mean( score[,'Math'] )
#학생의 이름
rownames(score)
#과목명은
colnames(score)
#2번째 학생
rownames(score)[2]
#세번째과목
colnames(score)[3]

z <- matrix(c(12,8,4, 11, 7, 3, 10,6,2, 9,5,1), nrow=3, ncol=4)
rownames(z) <- c('v1','v2','v3')
z
         
z <- matrix(12:1, nrow=3, ncol=4, byrow = T)
z
rownames(z) <- c('v1','v2','v3')
z
colnames(z) <- c('a1','a2','a3','a4')
z

v4 <- c(1,3,5,7)
z <- rbind(z,v4)
z

z[2:4, c('a1', 'a3')]
z

rownames(z)[3]
z
colnames(z)[3]
z


#데이터프레임

city <- c('서울','도쿄','워싱턴')
rank <- c(1,2,3)
etc <- c(TRUE,TRUE,FALSE)
city.info <- data.frame(city,rank,etc)
city.info

#도쿄
city.info[2,1]
city.info[2,"city"]
city.info[1,"rank"]

rownames(city.info)
colnames(city.info)

t(city.info) #t 행과 열을 바꿈  transation

iris
head(iris, n=10)
tail(iris)

head( iris[, c(1:2)])
head( iris[,'Petal.width'])

dim(iris)
str(iris)
iris[,5]
unique(iris[,5])
table(iris[,"species"])



colSums(iris[,-5]) #품종제외
colMeans(iris[,-5])
rowSums(iris[,-5])
rowMeans(iris[,-5])

state.x77
st <- data.frame(state.x77)
st

rownames(st)
colnames(st) 
dim(st)
str(st)
nrow(st)
ncol(st)
head(st)
head(st, n=10)
tail(st)
colSums(st)
rowSums(st)

st['Florida',]
st[,'Income']


st['Texas','Area']
st['Ohio',c('Population','Income')]

#인구수 5000이상
subset(st, Population >=5000)

subset(st, Income >=4500) [, c('Population','Income','Area')]

nrow( subset(st, Income >=4500)  )

subset(st, Area >=100000 & Frost >= 120)

subset(st, Population <2000 & Murder <12)

mean( subset(st, Illiertacy >= 2.0))[, 'Income']

ill.up2 <- mean(subset(st, Illiteracy)<2.0)[, 'Income']
ill.up2
ill.down2 <- meanmean(subset(st, Illiteracy)<2.0)[, 'Income']
ill.down2
abs(ill.up2 - ill.down2)

max(st [, 'Life.Exp'])
subset(st, Life.Exp == max(st [, 'Life.Exp']))
rownames( subset(st, Life.Exp == max(st [, 'Life.Exp'])) )

pen.Income <- st['Pennstlvania', 'Income' ]
subset(st, Income > pen.Income)
rownames(subset(st, Income > pen.Income))


#연산자
a <- matrix(1:20, 4,5)
a
b <- matrix(21:40, 4,5)
b

2*a
b-5
a+b
b/a
a*b


class(iris)
class(state.x77)
class(islands)
class(lh)

is.matrix(iris)
is.data.frame(iris)
iris


#matrix -> 데이터프래임셋
st <- data.frame(state.x77)
class(st)
calss(iris)
as.iM <- as.matrix(iris)
class(as.iM)
class(iris)


#열 추출하기
class(iris)
class(state.x77)

iris[, 'Species']

head(state.x77)

state.x77[, 'Area']

iris [ ,5]
state.x77[, 8]

iris['Species'] #데이터 프레임만 가능
state.x77['Area'] #불가능

iris[5]
state.x77[8] #검색 불가능

iris$Species #데티터프레임$열이름
state.x77$Area #검 색 불가능


name <- c('Tom','Jane','Nick')
age <- c(20,23,26)
gender <- c('M','F','M')
height <- c(180,160,170)
student <- c(TRUE, TRUE, FALSE)

human <- data.frame(name, age, gender, height, student)
human

human.new <-list(name='Mary', age=24, gender='F', height=155, student=TRUE)
human <-  rbind(human, human.new)
human

str(human)
dim(human)

class((human.Info)[1])
class( human.Info[, 1])
class( human.Info[1 ,])

human$age
mean( human$age )
human['age']
human[, 'age']
mean(human[, 'height'])
colnames(human[-4])

table(human$gender)

swiss
str(swiss)


#파일 불러오기
setwd("D:/ai/study/r_study") #경로 세팅
air <- read.csv('airquality.csv')
air
class(air)
air
air2 <- read.csv('D:/ai/study/r_study/airquality.csv')
air2
air2['Ozone']
air3 <- read.csv(file.choose())
head(air3)

#iris 에서 Species=='setosa' 만 저장하기
iris
subset(iris, Species=='setosa')

iris.setosa <- subset(iris, Species == 'setosa')
write.csv(iris.setosa, 'irisfilename.csv')
wirte.csv(iris.setosa, 'irisfile`.csv', row.names=F)
wirte.csv(iris.setosa, file.choose())

