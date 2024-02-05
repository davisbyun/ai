# 4. R에서 제공하는 swiss 데이터셋은 스위스 47개 주의 경제 자료를 포함하고 있다. 이 데이터셋에 대해서 다음 문제를 해결하기 위한 코드를 작성하시오.
 
# (1) 데이터셋의 요약 정보를 보이시오. 
class( swiss )
head(swiss)

# (2) 남성의 농업인 비율(Agriculture)이 가장 높은 주를 보이시오. 
# 1단계 가장 높은 것
max( swiss$Agriculture ) # 89.7
# 2단계 1단계의 행을 구하기
subset( swiss,   Agriculture == max( swiss$Agriculture ) ) 
# 3단계 2단계에서 row의 이름만 구하기
rownames(  subset( swiss,   Agriculture == max( swiss$Agriculture ) )    )

# (3) 남성의 농업인 비율(Agriculture)을 내림차순으로 정렬하여 주의 이름과 함께 보이시오. 
tmp <- swiss[  order( swiss$Agriculture, decreasing = T ) ,     ] 
tmp[ 'Agriculture' ]

# (4) 카톨릭 신자의 비율(Catholic)이 80% 이상인 주들의 남성의 농업인 비율(Agriculture) 을 보이시오. 
subset( swiss, Catholic >= 80 )[ 'Agriculture' ]

# (5) 징집대상자 중 입대시험에서 높은 평가를 받은 사람들의 비율(Examination)이 20% 미만이고 남성의 농업인 비율(Agriculture)이 50% 미만인 주의 이름과 Examination, Agriculture 컬럼의 값을 보이시오. 
subset(  swiss,  Examination < 20 & Agriculture<50 )[ c( 'Examination', 'Agriculture' )]

# 5 R을 이용하여 각 문제를 수행하기 위한 코드를 작성하시오.
# 
# (1) R에서 제공하는 state.x77 데이터셋에서 수입(Income)이 5,000 이상인 주의 데이터에서 수입(Income), 인구(Population), 면적(Area) 열의 값들만 추출하여 rich_state.csv 에 저장하시오. 
subset(  state.x77,  state.x77$Icome >= 5000) # 데이터프레임의 함수
# 1단계 데이터형을 확인
class( state.x77 ) # matrix 구조 
# 2단계 형변환 matrix --> data.frame
st<- data.frame( state.x77 )
class( st )
# 3단계 조건으로 검출 
rich_state <- subset( st, st$Income>=5000 )[  c('Income', 'Population', 'Area' )]
# 4단계 엑셀파일로 저장하기
write.csv( rich_state,  'd:/ai/study/r_study/rich_state.csv'  )

# (2) (1)에서 만든 rich_state.csv 파일을 읽어서 ds 변수에 저장한 후 ds의 내용을 출력하시오. 
ds <- read.csv( 'd:/ai/study/r_study/rich_state.csv' )
ds

# 6
#(1) 위와 같은 내용의 매트릭스 score를 생성하시오. 
m <- c(10,40,60,20)
f <- c(21,60,70,30)
score <- cbind( m,f)
score
# (2) score의 열 이름을 각각 male, female로 바꾸시오. 
colnames(score) <- c('male','female')
# (3) 2행에 있는 모든 값을 출력하시오. 
score[2, ] 
# (4) female의 모든 값을 출력하시오. 
score[ , 'female']

# (5) 3행 2열의 값을 출력하시오. 
score[3,2]

# 7. R에서 제공하는 mtcars 데이터셋은 자동차 모델에 대한 제원 정보를 담고 있다. 이 데이터셋에 대해서 다음 문제를 해결하기 위한 코드를 작성하시오.
# 
# (1) 이 데이터셋의 자료구조를 보이시오. 
class(mtcars)
# (2) 이 데이터셋의 행의 개수와 열의 개수를 보이시오. 
dim(mtcars) 
# (3) 이 데이터셋 열들의 자료형을 보이시오. 
str(mtcars) 
# (4) R 스튜디오의 도움말 기능을 이용하여 각 열이 어떤 데이터를 저장하고 있는지 설명하시오(예: mpg(mile per gallon), 자동차의 연비). 
옆에 help창의 돋보기 아이콘에다가 mtcars

# (5) 연비(mpg)가 가장 좋은 자동차 모델을 보이시오. 
# 1단계 제일 높은 값 33.9 
max( mtcars$mpg)
# 2단계 조건으로 검색해서 한 행만 추출
subset( mtcars, mtcars$mpg == max( mtcars$mpg)  )
# 3단계 자동차 모델만 추출하기 (열이름)
rownames(   subset( mtcars, mtcars$mpg == max( mtcars$mpg)  )  )

# (6) gear가 4인 자동차 모델 중 연비가 가장 낮은 모델을 보이시오. 
# 1단계 gear가 4인 자동차 모델
g.4 <- subset( mtcars, mtcars$gear == 4 )
# 2단계 1단계에서 연비가 가장 낮은 연비는 17.8
mpg.min<- min(  mtcars[mtcars$gear == 4, 'mpg']  )
# 3단계 2단계의 모델명 rownames()
rownames( subset( mtcars, mtcars$mpg == mpg.min) )

# (7) Honda Civic의 연비(mpg)와 gear 수를 보이시오. 
head(mtcars)
mtcars['Honda Civic', c('mpg', 'gear') ]
 
# (8) Pontiac Firebird 보다 연비가 좋은 자동차 모델을 모두 보이시오. 
# Pontiac Firebird 보다 연비는?
p.mpg <-  mtcars[ 'Pontiac Firebird', 'mpg'] # 19.2
# 
rownames( subset( mtcars, mpg > p.mpg ) ) 

# (9) 자동차 모델들의 평균 연비를 보이시오. 
mean( mtcars$mpg )

# (10) gear의 수 종류를 보이시오. 
unique( mtcars$gear )
