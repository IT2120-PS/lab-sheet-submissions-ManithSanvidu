setwd("D:\\Desktop\\IT24101458")

#Exercise
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
fix(data)
weights<-data$Weight.kg.

#1. Calculate the population mean and population standard deviation of the laptop bag weights.
popmn<-mean(weights)
popsd<-sqrt(sum((weights-popmn)^2)/length(weights))

#2. Draw 25 random samples of size 6 (with replacement) and calculate the sample mean and sample standard deviation for each sample.
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(weights,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<c(n,paste('S',i))
}

#Assign column names for each sample created.
colnames(samples)=n

#Calculate mean and standard variation for each sample
s.means<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)

#3. Calculate the mean and standard deviation of the 25 sample means and state the relationship of them with true mean and true standard deviation.
mean_sample<-mean(s.means)
sd_sample<-sd(s.means)

mean_sample
sd_sample