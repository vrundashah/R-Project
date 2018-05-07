setwd("C:/Users/anuas/OneDrive/BI/Project-R/R-Class-Exercise")
data1 <- read.csv("Hospital1.csv")
View(data1)
keepcols <- c(1,4,6)
data2 <- data1[ ,keepcols]
colors <- c("green","orange","brown",)
