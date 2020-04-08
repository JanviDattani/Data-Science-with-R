library(readxl)
mmlr <- read_excel("Desktop/insurance.xls")
View(mmlr)   
mmlr1<-mmlr[,c(1,3,4,7)]
#Scatter Plot Matrix:
pairs(mmlr1)
#Correlation Matrix:
cor(mmlr1)
#Regression Model and Summary
model<-lm(charges~.,data = mmlr1)
summary(model)

#########Experiment#####################

#Multi-colinearity
install.packages("car")
library(car)
car::vif(model)
##Subset selection
library(MASS)
stepAIC(model)

model1<-lm(formula = charges ~ age + bmi, data = mmlr1)
summary(model1)
