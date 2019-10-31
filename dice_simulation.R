#Program simulates rolling of dice to estimate
#probabilities of certain outcomes


#matrix x holds results of 40 rolls
x = matrix(sample(1:6, 4*10, replace=TRUE), nrow=4, ncol=10)


#1000 roll simulation
y = sample(1:6, 1000, replace=TRUE)
#returns num of rolls that were 6
sum(y == 6)
#divide by num of rolls to find ratio(should be about 1/6)
sum(x == 6)/1000


#i is a 4x10 matrix holding 40 simulated rolls.
#Each column is a trial of 4 rolls.
#j is matrix of booleans saying whether a 6 was rolled or not.
#The colSums counts num of 6's in each trial
#The sum(z > 0) shows how many trials had a 6
#The mean reveals how often a 6 was rolled in a trial of 4 rolls
i = matrix(sample(1:6, 4*10, replace=TRUE), nrow=4, ncol=10)
j = (i == 6)
z = colSums(j)
sum(z > 0)
mean(z > 0)

#The same experiment is repeated with 1000 trials
i = matrix(sample(1:6, 4*1000, replace=TRUE), nrow=4, ncol=10)
j = (i == 6)
z = colSums(j)
sum(z > 0)
mean(z > 0) #mean should equal about 0.518


#Following shows estimate of probability of summing 7 
#when rolling two dice
k = matrix(sample(1:6, 2*1000, replace=TRUE), nrow=2, ncol=1000)
n = colSums(k)
mean(n == 7)

#The following shows estimate of probaility of 
#rolling two 6's
a = matrix(sample(1:6, 2*1000, replace=TRUE), nrow=2, ncol=1000)
b = colSums(a)
mean(b == 12)
