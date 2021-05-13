#Histogram & Density Plots in R----
#We can build them using the hist() function available in base R.
# Simple Histogram
hist(mtcars$mpg)

# Colored Histogram with Different Number of Bins
hist(mtcars$mpg, breaks=10, col="red")

#Density plots:
#These plots are effective way to view the distribution of a variable.
#Density Plot
d <- density(mtcars$mpg) # returns the density data 
plot(d) # plots the results

# Filled Density Plot
d <- density(mtcars$mpg)
plot(d, main="Density of Miles Per Gallon")
polygon(d, col="red", border="blue")

#Comparing groups via density.
#Compare MPG distributions for cars with 
#4,6, or 8 cylinders
#install.packages("sm")
library(sm)
attach(mtcars)

# create value labels 
cyl.f <- factor(cyl, levels= c(4,6,8),
                labels = c("4 cylinder", "6 cylinder", "8 cylinder")) 

# plot densities 
sm.density.compare(mpg, cyl, xlab="Miles Per Gallon")
title(main="MPG Distribution by Car Cylinders")

View(women)
#histogram
hist(women$height, freq=TRUE)  #3 women between 58 and 60
#no of breaks auto calculated.

hist(women$height, breaks=4, col=1:4)
#Density Plot
d <- density(women$height)
plot(d, main="Density Plot of women height")
