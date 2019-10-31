#Program generates a histogram of lynx trappings (from R datasets package)
#with density lines fitted to the chart

library(datasets)

summary(lynx)

hist(lynx,
     breaks = 15,
     freq   = FALSE,
     col    = 'light blue',
     main   = paste('Histogram of Annula Lynx',
                    'Trappings, 1821-1934'),
     xlab   = 'Number of Lynx Trapped')

lines(density(lynx, adjust = 3), col = 'red', lwd = 2)
lines(density(lynx), col = 'blue', lwd = 2)

rug(lynx, lwd = 2, col = 'gray')
