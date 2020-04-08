library(readxl)
ffi <- read_excel("Desktop/insurance.xls",+ sheet = "Female")
View(ffi)   


ffi1<-ffi[,c(1,3,4,7)]
#Scatter Plot Matrix:
pairs(ffi1)
#Correlation Matrix:
cor(ffi1)
#Regression Model and Summary
model.ffi<-lm(charges~.,data = ffi1)
summary(model.ffi)


#Multi-colinearity
install.packages("car")
library(car)
car::vif(model.ffi)
##Subset selection
library(MASS)
stepAIC(model)

model1<-lm(formula = charges ~ age + bmi, data = mmlr1)
summary(model1)
