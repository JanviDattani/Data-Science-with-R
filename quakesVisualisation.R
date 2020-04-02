datasets::quakes
quakes
quakes<-datasets::quakes
head(quakes)
plot(quakes)
plot(quakes$depth)
hist(quakes$depth,main="BarChart for Depth",xlab="Depth", ylab="Frequency",col="yellow",horiz="F")
par(mfrow=c(1,1),mar=c(2,5,2,1),las=0,bty="n")
hist(quakes$depth,main="Histogram for Depth",xlab="Depth", ylab="Frequency",col="yellow",horiz="F")
hist(quakes$stations,main="Histogram for Stations",xlab="Stations", ylab="Frequency",col="yellow",horiz="F")
hist(quakes$mag,main="Histogram for Magnitude",xlab="Magnitude", ylab="Frequency",col="yellow",horiz="F")
boxplot(quakes[ ,(3:5)])
        
        