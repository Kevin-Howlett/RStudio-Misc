#This script contains code with the answers to questions posed 
#in an assessment for a DataCamp course on R.
#This portion of the course focused on programming in R.
#(i.e. Conditionals, functions, and for loops)

#Assign the state abbreviation when the state name is longer than 8 characters 
new_names <- ifelse(nchar(murders$state) > 8, murders$abb, new_names)
#Create function called `sum_n`
sum_n <- function(n){
  x <- 1:n
  sum(x)
}
#Use the function to determine the sum of integers from 1 to 5000
sum_n(5000)
#Create `altman_plot` (plots x+y on x-axis and y-x on y-axis)
altman_plot <- function(x, y){
  plot(x+y, y-x)
}
#Write a function compute_s_n with argument n that for any given n computes the 
#sum of 1 + 2^2 + ...+ n^2
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
#Report the value of the sum when n=10
compute_s_n(10)
#Define an empty numeric vector s_n of size 25
s_n <- vector("numeric", 25)
#Compute the the sum when n is equal to each integer from 1 to 25 using the function 
#we defined in the previous exercise
for(i in 1:25){
  s_n[i] <- compute_s_n(i)
}
#Plot s_n (on the y-axis) against n (on the x-axis). 
plot(n, s_n)
# Check that s_n is identical to the formula n(n+1)(2n+1)/6
identical(s_n, n*(n+1)*(2*n+1)/6)

