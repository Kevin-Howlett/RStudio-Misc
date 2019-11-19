#This script contains code with the answers to questions posed 
#in an assessment for a DataCamp course on R.
#The questions focus on a dataset about murder 
#numbers and populations in different states in the US. 
#Install with install.packages('dslabs')

#Indexing Questions

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000
# Store the `murder_rate < 1` in `low` 
low <- murder_rate <1
# Get the indices of entries that are below 1
which(low)
# Names of states with murder rates lower than 1
murders$state[which(low)]
# States in the Northeast with murder rates lower than 1; store in 'ind'
ind <- low & murders$region=="Northeast"
# Names of states in `ind`
murders$state[ind]
# Compute the average murder rate using `mean` and store it in object named `avg`
avg <- mean(murder_rate)
# How many states have murder rates below avg ? Check using sum 
sum(murder_rate < avg)
# Store the 3 abbreviations ('AK','MI','IA') in a vector called `abbs`
abbs <- c('AK', 'MI', 'IA')
# Match the abbs to the murders$abb and store in ind
ind <- match(abbs, murders$abb)
# Print state names from ind
print(murders$state[ind])
# Store the 5 abbreviations ('MA','ME','MI','MO','MU') in `abbs`
abbs <- c('MA','ME','MI','MO','MU')
# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame
abbs %in% murders$abb
# Use the `which` command and `!` operator to find out which index abbreviations are not actually part of the dataset and store in 'ind' 
ind <- which(!abbs%in%murders$abb)
# Names of abbreviations in `ind`
abbs[ind]
# Redefine murders so that it includes a column named rate with the per 100,000 murder rates
murders <- mutate(murders, rate = murders$total/murders$population*100000)
# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
murders <- mutate(murders, rank = rank(-rate))

#Data Wrangling Questions

# Use select to only show state names and abbreviations from murders
library(dplyr)
select(murders, state, abb)
# Filter to show the top 5 states with the highest murder rates
filter(murders, rank<6)
# Use filter to create a new data frame no_south
no_south <- filter(murders, region != 'South')
# Use nrow() to calculate the number of rows
nrow(no_south)
# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- filter(murders, region %in% c('Northeast', 'West'))
# Number of states (rows) in this category 
nrow(murders_nw)
# Create a table, call it my_states, that satisfies both the conditions
#(in 'Northeast' or 'West' and murder rate less than 1)
my_states <- filter(murders, region %in% c('Northeast', 'West'), rate<1)
# Use select to show only the state name, the murder rate and the rank
select(my_states, state, rate, rank)
# show the result and only include the state, rate, and rank columns, all in one line
filter(murders, region %in% c('Northeast', 'West'), rate<1) %>%  select(state, rate, rank)
# Create new data frame called my_states (with specifications in the instructions)
my_states <- murders %>% mutate(rate=total/population*100000, rank=rank(-rate)) %>% filter(region %in% c('Northeast', 'West'), rate<1) %>% select(state, rate, rank)

#Plotting Questions

# Transform population using the log10 transformation and save to object log10_population
log10_population <- log10(murders$population)
# Transform total gun murders using log10 transformation and save to object log10_total_gun_murders
log10_total_gun_murders <- log10(total_gun_murders)
# Create a scatterplot with the log scale transformed population and murders 
plot(log10_population, log10_total_gun_murders)
# Store the population in millions and save to population_in_millions 
population_in_millions <- murders$population/10^6
# Create a histogram of this variable
hist(population_in_millions)
# Create a boxplot of state populations by region for the murders dataset
boxplot(data = murders, population~region)
