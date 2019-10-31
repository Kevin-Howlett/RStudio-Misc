#Program generates plot(from mtcars data in R datasets package)
#of mpg vs weight of various cars. Color of data mapped to cylinders.
#Linear regression is fitted to show inverse trend

library(datasets)

summary(mtcars)

ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point(aes(color=factor(cyl))) +
  geom_smooth(method='lm', se=FALSE)

