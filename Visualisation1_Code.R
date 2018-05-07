data1 <- read.csv("GI1.csv", header=TRUE)
keepcols<- c(1,6)
data2 <- data1[ ,keepcols]
count2 <- data.frame(data2$Hospital.overall.rating, data2$State)
count4 <- count2[complete.cases(count2),]
count3<-aggregate(count4$data2.Hospital.overall.rating, by=list(count4$data2.State), FUN=mean)
count5<- data.frame(count3)
View(count5)
barplot(count5$x, ylab = "summary star rating", names.arg = count5$Group.1, main="Evaluation of Summary Star Rating across USA", col=c("blue","red","green","orange","yellow","violet"))
