setwd("D:/Desktop/IT24101458")

#1
#i. State the null and alternative hypotheses for the test.

#Null Hypothesis - Customers choose each snack type with equal probability
#Alternative hypothesis -  Customers do not choose each snack type with equal probability


#ii. Perform a suitable chi-squared test to test the null hypothesis.
observed<-c(120,95,85,100)
total<-sum(observed)
expected<-rep(total/4,4)
chisq.test(observed,p=rep(1/4,4))

#iii. Give your conclusions based on the results.

#If p-value>0.05, fail to reject H0.
#If p-value<=0.05, reject H0. 

# p-value=0.08966>0.05 
# Therefore, so we fail to reject the null hypothesis. 
#It is because the data does not show a significant preference for any type.