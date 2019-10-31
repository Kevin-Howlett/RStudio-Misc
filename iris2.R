#Program generates histograms of petal widths of
#different iris species. par(mfrow = c(3, 1)) allows
#multiple plots in same window

library(datasets)

par(mfrow = c(3, 1))

hist(iris$Petal.Width [iris$Species == 'setosa'],
     xlim   = c(0,3),
     breaks = 9,
     main   = 'Petal Width for Setosa',
     xlab   = '',
     col    = 'red')

hist(iris$Petal.Width [iris$Species == 'versicolor'],
     xlim = c(0,3),
     breaks = 9,
     main = 'Petal Width for Versicolor',
     xlab = '',
     col = 'purple')

hist(iris$Petal.Width [iris$Species == 'virginica'],
     xlim = c(0,3),
     breaks = 9,
     main = 'Petal Width for Virginica',
     xlab = '',
     col = 'blue')
