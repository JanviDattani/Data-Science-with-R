Nd<-NewspaperData
# Visualization
install.packages("lattice")
library(lattice)
dotplot(Nd$sunday, main="Dot Plot of Sunday Circulations",col="dodgerblue4")
dotplot(Nd$daily, main="Dot Plot of Daily Circulations", col="dodgerblue4")
boxplot(Nd$sunday,col="dodgerblue4")
boxplot(Nd$daily,col="dodgerblue4")
#Regression equation
#Syntax  model<-lm(y~x,data=data set name)
colnames(Nd)
model<- lm(sunday~daily,data = Nd)
summary(model)
#sun= 13.84 + (1.34*200)
#sun
data<-data.frame(daily=c(200,350,240))
pred<-predict(model,newdata = data)
pred