install.packages("plyr")
library(plyr)
x <-  runif(50) # generating 50 random numbers from uniform distribution(0,1)
y <-  runif(50) # generating 50 random numbers 
data <- cbind(x,y) 
plot(data)
#Elbow chart
wss<-c()
for(i in 2:15) wss[i]<-sum(kmeans(data,centers = i)$withinss)
plot(1:15,wss,type = "b", xlab = "No of clusters",ylab = "Avg distance")
###Cluster algorithm building(km <- kmeans(data,5) 
km$centers
km$cluster
##Animation
install.packages("animation")
library(animation)
windows()
km <- kmeans.ani(data, 5)