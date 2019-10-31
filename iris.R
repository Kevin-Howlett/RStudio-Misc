#Program generates plots(from iris dataset in R datasets package)
#that compare sepal and petal lengths and widths of three iris 
#species. The last plot compares relative sizes of these.

library(datasets)

summary(iris)

ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Species)) +
  geom_point()

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point()

ggplot(iris, aes(x=Petal.Length, y=Sepal.Width, color=Species)) +
  geom_point()

ggplot(iris, aes(x=Sepal.Length, y=Petal.Width, color=Species)) +
  geom_point()


#Comparison of relative sepal size vs relative petal size
#(sizes are the products of the respective widths and lengths)
ggplot(iris, aes(x=Sepal.Length*Sepal.Width, y=Petal.Length*Petal.Width, color=Species)) +
  geom_point() +
  geom_smooth(method='lm', se=FALSE)

