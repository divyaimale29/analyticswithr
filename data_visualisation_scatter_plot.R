#Scatterplot & Pairs plots in R----
#We can build them using the plot() function available in base R.

X=1:10
Y=11:20
plot(x=X, y=Y)
mtcars
plot(mtcars$wt, mtcars$mpg, main="Scatterplot Example", 
     xlab="Car Weight ", ylab="Miles Per Gallon ", pch=11)

plot(x=mtcars$wt, y=mtcars$mpg)

df<-mtcars
plot(x=df$wt, y=df$mpg, col=df$am)

#add more features
plot(x=df$wt, y=df$mpg, col=df$cyl)
#3 colors wrt to each cyl : how to find which cylinder

plot(x=df$wt, y=df$mpg, col=df$cyl, cex=2)
plot(x=df$wt, y=df$mpg, col=df$cyl, cex=df$gear)
#using am and vs will not work for cex as they have 0 values also
plot(x=df$wt, y=df$mpg, col=df$cyl, cex=df$am) 

plot(x=mtcars$wt, y=mtcars$mpg)
#Negative Relationship : wt increase, mpg reduces

#Pairs Plot using scatter plots
#The pairs R function returns a plot matrix,consisting of scatterplots 
#for each variable-combination of a data frame.
View(mtcars)
pairs(~mpg+disp+drat+wt,data=mtcars, 
      main="Pair plot")

View(iris)
pairs(~Sepal.Width+Sepal.Length+Petal.Width+Petal.Length,data=iris, 
      main="Pair plot")
