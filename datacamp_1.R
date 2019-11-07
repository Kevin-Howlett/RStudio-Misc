#This script contains code with the answers to questions posed 
#in an assessment for a DataCamp course on R.
#A good portion of the questions focus on a dataset about murder 
#rates in different states in the US. 
#Install with install.packages('dslabs')


# Below, write code to calculate the sum of the first 100 integers
n <- 100
n*(n+1)/2

# Below, write code to calculate the sum of the first 1000 integers 
n <- 1000
n*(n+1)/2

# Compute log to the base 10 (log10) of the sqrt of 100. Do not use variables.
log10(100^(1/2))



#The following questions ask about a library of data about state murder rates
#downloaded for the course

# Load package and data
library(dslabs)
data(murders)
# Use the function names to extract the variable names (find column names)
names(murders)
# Use the accessor to extract state abbreviations and assign it to a
a = murders$abb
# Use square brackets to extract `abb` from `murders` and assign it to b
b = murders[["abb"]]
# Check if `a` and `b` are identical 
identical(a, b)
# Determine the number of regions included in this variable 
length(levels(murders$region))
# Write one line of code to show the number of states per region
table(murders$region)


