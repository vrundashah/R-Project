star_rating<-function(type)
{
  data1 <- read.csv("Hospital1.csv")
  keepcols <- c(1,4,6)
  data2 <- data1[ ,keepcols]
  if(type=="Summary star rating")
  {
    data30 <- data2[complete.cases(data2),]
    data31<-aggregate(data30$Patient.Survey.Star.Rating,      by=list(data30$State,data30$HCAHPS.Question=="Summary star rating"), FUN=mean)
    data32<-data31[which(data31$Group.2==TRUE), ]
    View(data32)
    barplot(data32$x,main = "Summary star rating",names.arg = data44$Group.1,xlab = "States",ylab = "Rating",col = colors)
  }
  else if(type=="Care transition - star rating")
  {
    data44 <- data2[complete.cases(data2),]
    data33<-aggregate(data44$Patient.Survey.Star.Rating, by=list(data44$State,data44$HCAHPS.Question=="Care transition - star rating"), FUN=mean)
    data44<-data33[which(data33$Group.2==TRUE), ]
    View(data44)
    barplot(data44$x,main = "Summary star rating",names.arg = data44$Group.1,xlab = "States",ylab = "Rating",col = colors)
  }
  else if(type=="Cleanliness - star rating")
  {
    data5 <- data2[complete.cases(data2),]
    data55<-aggregate(data5$Patient.Survey.Star.Rating, by=list(data5$State,data5$HCAHPS.Question=="Cleanliness - star rating"), FUN=mean)
    data6<-data55[which(data55$Group.2==TRUE), ]
    View(data6)
    barplot(data6$x,main = "Cleanliness - star rating",names.arg = data44$Group.1,xlab = "States",ylab = "Rating",col = colors)
  }
  else if(type=="Communication about medicines - star rating")
  {
    data7 <- data2[complete.cases(data2),]
    data77<-aggregate(data7$Patient.Survey.Star.Rating, by=list(data7$State,data7$HCAHPS.Question=="Communication about medicines - star rating"), FUN=mean)
    data8<-data77[which(data77$Group.2==TRUE), ]
    View(data8)
    barplot(data8$x,main = "Communication about medicines - star rating",names.arg = data44$Group.1,xlab = "States",ylab = "Rating",col = colors)
  }
  else if(type=="Discharge information - star rating")
  {
    data9 <- data2[complete.cases(data2),]
    data99<-aggregate(data9$Patient.Survey.Star.Rating, by=list(data9$State,data9$HCAHPS.Question=="Discharge information - star rating"), FUN=mean)
    data10<-data99[which(data99$Group.2==TRUE), ]
    View(data10)
    barplot(data10$x,main = "Discharge information - star rating",names.arg = data44$Group.1,xlab = "States",ylab = "Rating",col = colors)
  }
  else if(type=="Doctor communication - star rating")
  {
    data12 <- data2[complete.cases(data2),]
    data13<-aggregate(data12$Patient.Survey.Star.Rating, by=list(data12$State,data12$HCAHPS.Question=="Doctor communication - star rating"), FUN=mean)
    data14<-data13[which(data13$Group.2==TRUE), ]
    View(data14)
    barplot(data14$x,main = "Doctor communication - star rating",names.arg = data44$Group.1,xlab = "States",ylab = "Rating",col = colors)
  }
  else if(type=="Nurse communication - star rating")
  {
    data15 <- data2[complete.cases(data2),]
    data16<-aggregate(data15$Patient.Survey.Star.Rating, by=list(data15$State,data15$HCAHPS.Question=="Nurse communication - star rating"), FUN=mean)
    data17<-data16[which(data16$Group.2==TRUE), ]
    View(data17)
    barplot(data17$x,main = "Nurse communication - star rating",names.arg = data44$Group.1,xlab = "States",ylab = "Rating",col = colors)
  }
  else if(type=="Overall hospital rating - star rating")
  {
    data18 <- data2[complete.cases(data2),]
    data19<-aggregate(data18$Patient.Survey.Star.Rating, by=list(data18$State,data18$HCAHPS.Question=="Overall hospital rating - star rating"), FUN=mean)
    data20<-data19[which(data19$Group.2==TRUE), ]
    View(data20)
    barplot(data20$x,main = "Overall hospital rating - star rating",names.arg = data44$Group.1,xlab = "States",ylab = "Rating",col = colors)
  }
  else if(type=="Quietness - star rating")
  {
    data21 <- data2[complete.cases(data2),]
    data22<-aggregate(data21$Patient.Survey.Star.Rating, by=list(data21$State,data21$HCAHPS.Question=="Quietness - star rating"), FUN=mean)
    data23<-data22[which(data22$Group.2==TRUE), ]
    View(data23)
    barplot(data23$x,main = "Quietness - star rating",names.arg = data44$Group.1,xlab = "States",ylab = "Rating",col = colors)
  }
  else if(type=="Recommend hospital - star rating")
  {
    data24 <- data2[complete.cases(data2),]
    data25<-aggregate(data24$Patient.Survey.Star.Rating, by=list(data24$State,data24$HCAHPS.Question=="Recommend hospital - star rating"), FUN=mean)
    data26<-data25[which(data25$Group.2==TRUE), ]
    View(data26)
    barplot(data26$x,main = "Recommend hospital - star rating",names.arg = data44$Group.1,xlab = "States",ylab = "Rating",col = colors)
  }
  else if(type=="Staff responsiveness - star rating")
  {
    data27 <- data2[complete.cases(data2),]
    data28<-aggregate(data27$Patient.Survey.Star.Rating, by=list(data27$State,data27$HCAHPS.Question=="Staff responsiveness - star rating"), FUN=mean)
    data29<-data28[which(data28$Group.2==TRUE), ]
    View(data29)
    barplot(data29$x,main = "Staff responsiveness - star rating",names.arg = data44$Group.1,xlab = "States",ylab = "Rating",col = colors)
  }
  else
  {
    cat("Enter the proper rating discription")
  }
}
