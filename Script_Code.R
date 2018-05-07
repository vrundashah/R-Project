data1 <- read.csv("Hospital1.csv")
keepcols <- c(1,4,6)
data2 <- data1[ ,keepcols]
data44 <- data2[complete.cases(data2),]
hist(data44$x,main="Range of the Summary Star Ratings",xlab = "Summary Star Rating",breaks=1,col = "light blue",border = "blue")
