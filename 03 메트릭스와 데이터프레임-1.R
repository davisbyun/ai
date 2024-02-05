swiss

class(swiss)

str(swiss)

head(swiss)

max(swiss$Agriculture)

subset(swiss, Agriculture == max(swiss$Agriculture) )

rownames( subset(swiss, Agriculture == max(swiss$Agriculture) ) )

tmp <- swiss[ order (swiss$Agriculture, decreasing = T) , ]
tmp['Agriculture']

subset( swiss, Catholic >= 80 )['Agriculture']

tmp1 <- subset( swiss, Catholic >= 80 )
tmp1 ['Agriculture']

subset( swiss, Examination <20 & Agriculture <50 )[ c( 'Examination', 'Agriculture' ) ]

state.x77
calss(state.x77)

st <- data.frame(state.x77)
head(st)
class(st)

subset( st, st$Income >= 5000 )[c( 'Income', 'Population','Area')]
setwd('D://ai/study/r_study')
my.st <- subset( st, st$Income >= 5000 )[c( 'Income', 'Population','Area')]
write.csv(st, "myx77.csv", row.names = F)

write.csv(rich_state, 'd:/ai/study/r_study/rich_state.csv')
ds <- read.csv('d:/ai/study/r_study/rich_state.csv')

m <- c(10,40,60,20)
f <- c(21,60,70,30)

score <- cbind(m,f)
score

colnames(score) <- c('male','female')
score[,2]
score[,'female']
score[3,2]

mtcars
class(mtcars)
dim(mtcars)
str(mtcars)

max(mtcars$mpg)
subset(mtcars, mtcars$mpg == max(mtcars$mpg))
rownames(subset(mtcars, mtcars$mpg == max(mtcars$mpg)))

g.4 <- subset(mtcars, mtcars$gear == 4)
mpg.min <- min( mtcars [ g.4, 'mpg' ]) 
rownames(  subset(mtcars,  mpg==mpg.min) )

head(mtcars)
p.mpg <- mtcars[ 'Honda Civic', c('mpg','gear') ]

mtcars['Pontiac Firebird', 'mpg']
rownames(subset(mtcars, mpg>p.mpg))

mean(mtcars$mpg)
unique(mtcars$gear)
