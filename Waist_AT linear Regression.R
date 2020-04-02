
# Visualization
WC_AT<-('WC_AT.csv')
install.packages("lattice")
library(lattice)
dotplot(Nd$Waist, main="Dot Plot of Waist ",col="dodgerblue4")
dotplot(Nd$AT, main="Dot Plot of AT ", col="dodgerblue4")
boxplot(Nd$Waist,col="dodgerblue4")
boxplot(Nd$AT,col="dodgerblue4")
#Regression equation #Syntax  model<-lm(y~x,data=data set name)
colnames(WC_AT)
model<- lm(AT~ Waist,data = WC_AT)
summary(model)
data<-data.frame(Waist=c(40,80,300))
a<-predict(model,newdata = data)
a
     
     
    

##########

