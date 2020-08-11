train <- read.csv("train.csv",header = TRUE)
test <- read.csv("test.csv",header = TRUE)

test.Survived <- data.frame(Survived = rep("None", nrow(test)),test[,])
colnames(test.Survived)

test.survived <- test.Survived[,c(2,1,3,4,5,6,7,8,9,10,11,12)]

colnames(train)
                            
data.combined <- rbind(train,test.survived)

str(data.combined)

data.combined$Survived <- as.factor(data.combined$Survived)

data.combined$Pclass <- as.factor(data.combined$Pclass)

table(data.combined$Survived)

table(data.combined$Pclass)

library(ggplot2)

train$Pclass <- as.factor(train$Pclass)

example <- matrix(c(1,2,3,4,5,6,7,8),nrow = 4,ncol= 2)