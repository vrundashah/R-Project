setwd("C:/Users/anuas/OneDrive/BI/Project-R/R-Class-Exercise")
data1 <- read.csv("Hospital1.csv")
View(data1)
keepcols <- c(1,4,6)
data2 <- data1[ ,keepcols]
data44 <- data2[complete.cases(data2),]
data33<-aggregate(data44$Patient.Survey.Star.Rating, by=list(data44$State,data44$HCAHPS.Question=="Care transition - star rating"), FUN=mean)
data44<-data33[which(data33$Group.2==TRUE), ]
View(data44)
