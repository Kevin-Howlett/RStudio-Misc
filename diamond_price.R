#Program produces a plot comparing price of diamonds to 
#carats. A third variable, diamond clarity, is shown 
#by color, and curves are fitted to data to show where
#diamonds are mispriced

mydata = read.csv('P2-Mispriced-Diamonds.csv')

ggplot(data=mydata[mydata$carat<2.5,], 
       aes(x=carat, y=price, color=clarity)) +
  geom_point(alpha=0.1) +
  geom_smooth()
