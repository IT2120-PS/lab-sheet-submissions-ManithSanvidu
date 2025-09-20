setwd("D:/Desktop/Lab6")
#Exercise

#Question 1
#i. What is the distribution of X?
#Binomial Distribution 
#Random variable X has binomial distribution with n=50 and P=0.85
#X~Binomial(n=50,p=0.85)

#ii. What is the probability that at least 47 students passed the test?
#P(X>=47) =1-P(X<47)=1-(P<=46)
1-pbinom(46,50,0.85)

#Question 2
#i. What is the random variable (X) for the problem?
#Number of customer calls received per hour

#ii. What is the distribution of X?
#Poisson Distribution 
#Here, random variable X has poisson distribution lambda=12

#iii. What is the probability that exactly 15 calls are received in an hour?
#P(X=15)
dpois(15,12)

