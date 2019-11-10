#This script contains code with the answers to questions posed 
#in an assessment (section 2) for a DataCamp course on R.
#A good portion of the questions focus on a dataset about murder 
#rates in different states in the US. 
#Install with install.packages('dslabs')

# Create a numeric vector to store the temperatures listed in the instructions into a vector named temp
# Make sure to follow the same order in the instructions (35, 88, 42, 84, 81, 30)
temp <- c(35, 88, 42, 84, 81, 30)
# Create a character vector called city to store the city names
# Make sure to follow the same order as in the instructions (Beijing, Lagos, Paris, Rio de Janeiro, San Jaun, Toronto)
city <- c('Beijing', 'Lagos', 'Paris', 'Rio de Janeiro', 'San Juan', 'Toronto')
# temperatures of the first three cities in the list:
temp[1:3]
# Define temp
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city
# Access the temperatures of Paris and San Juan
temp[c(3,5)]
# Create a vector x of integers that starts at 12 and ends at 73.
x <- 12:73
# Determine the length of object x.
length(x)
# Create a vector containing all the positive odd numbers smaller than 100.
# The numbers should be in ascending order
seq(1, 100, by=2)
# Create a sequence of numbers from 6 to 55, with 4/7 increments and determine its length
x <- seq(6, 55, 4/7)
length(x)
# Store the sequence in the object a
a <- seq(1, 10, length.out = 100)
# Determine the class of a
class(a)
# Store the sequence in the object a
a <- seq(1, 10)
# Determine the class of a
class(a)
# Check the class of 1, assigned to the object a
class(1)
# Confirm the class of 1L is integer
class(1L)
# Define the vector x
x <- c(1, 3, 5,"a")
# Note that the x is character vector
x
# Typecast the vector to get an integer vector
# You will get a warning but that is ok
as.numeric(x)

#The following are Qs and As about the 'dslabs' murder rate data 

# Access population values (in murders data) from the dataset and store it in pop
pop <- murders$population
# Sort the object and save it in the same object 
pop <- sort(pop)
# Report the smallest population size 
pop[1]
# Access population from the dataset and store it in pop
pop <- murders$population
# Use the command order to find the vector of indexes that order pop and store in object ord
ord <- order(pop)
# Find the index number of the entry with the smallest population size
ord[1]
# Find the index of the smallest value for population
which.min(murders$population)
# Define variable states to hold the states
states <- murders$state
# Use the index you just defined to find the state with the smallest population
states[which.min(murders$population)]
# Define a variable states to be the state names 
states <- murders$state
# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)
# Create a data frame my_df with the state name and its rank
my_df <- data.frame(states, ranks)
# Define a variable ind to store the indexes needed to order the population values
ind <- order(murders$population)
# Create a data frame my_df with the state name and its rank and ordered from least populous to most 
my_df <- data.frame(states[ind], ranks[ind])

# Using new dataset 
library(dslabs)
data(na_example)

# Checking the structure 
str(na_example)
# Find out the mean of the entire dataset 
mean(na_example)
# Use is.na to create a logical index ind that tells which entries are NA
ind <- is.na(na_example)
# Determine how many NA ind has using the sum function
sum(ind)
# Compute the average, for entries of na_example that are not NA 
mean(na_example[!ind])

# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)
# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values
temp <- 5/9*(temp-32)
# Create a data frame `city_temps` 
city_temps <- data.frame(city, temp)
# Define an object `x` with the numbers 1 through 100
x <- 1:100
# Compute the sum (of eq 1+1/2^2+1/3^2+...+1/100^2)
sum(1/(x^2))

# Store the per 100,000 murder rate for each state in murder_rate
murder_rate <- murders$total*100000/(murders$population)
# Calculate the average murder rate in the US 
mean(murder_rate)
