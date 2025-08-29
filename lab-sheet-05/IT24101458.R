#Set the working directory
setwd("D:/Desktop/IT24101458")

#1
DeliveryTimes<-read.table("Exercise - Lab 05.txt",header=TRUE)

#2
colnames(DeliveryTimes) <- "DeliveryTime"
DeliveryTimes$DeliveryTime <- as.numeric(DeliveryTimes$DeliveryTime)
hist(DeliveryTimes$DeliveryTime,
     breaks=seq(20,70,by=(70-20)/9),
     right=FALSE,
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Frequency" )
     
#3
#The distribution is roughly bell-shaped suggesting a normal distribution. The frequency distribution decreases symmetrically on both sides where it peaks around 40 minutes. 

#4
freq_table<-table(cut(DeliveryTimes$DeliveryTime,breaks=seq(20,70,by=5),right=TRUE))
cumulative_freq<-cumsum(freq_table)   
midpoints<-seq(25,70,by=5)

plot(midpoints, cumulative_freq,
     type="o",
     main="Cumulative Frequency Polygon(Ogive)",
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency")

