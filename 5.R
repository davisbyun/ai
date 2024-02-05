favorite <- c('WINTER', 'SUMMER', 'SPRING', 'SUMMER', 'SUMMER', 'FALL', 'FALL', 'SUMMER', 'SPRING', 'SPRING')
favorite
table(favorite)

table(favorite)/length(favorite)

ds <- table(favorite)
barplot(ds, main='좋아하는 계절')
pie(ds)

fav.color <- c(2,3,1,2,3,3,2,1,1,1,2,3,3)
colors <- c('green', 'red', 'blue')
ds2<- table(fav.color)
barplot(ds2, main="좋아하는 색깔", col=colors )
pie(ds2)


weight <- c(60, 62, 64, 65, 68, 69)
weight.heavy <- c(weight, 120)
weight.heavy
mean(weight)
mean(weight.heavy)
median(weight)
median(weight.heavy)
mean(weight,trim=0.2)
mean(weight.heavy, trim=0.2)
