data1 <- read.csv("Hospital.csv", header = TRUE)
keepcols <- c(1,9,10)
data2 <- data1[ ,keepcols]
count2 <- data.frame(data2$State, data2$Number.of.Completed.Surveys, data2$Survey.Response.Rate.Percent)
count4 <- count2[complete.cases(count2),]
count3<-aggregate(count4[ ,2:3], list(count4$data2.State), mean)
count5<- data.frame(count3)
View(count5)
plot(count5$data2.Number.of.Completed.Surveys,count5$data2.Survey.Response.Rate.Percent, xlim=c(0,1000), ylim=c(0,50),xlab = "Number of completed surveys", ylab="Survey response rate", main="Mapping survey response across USA")
