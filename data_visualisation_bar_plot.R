# Base Plots in R:

#bar Plot in R----
#count of categories.
#We can build them using the barplot() function available in base R.
View(mtcars)
cylinders = table(mtcars$cyl)
cylinders
barplot(table(mtcars$cyl))

barplot(table(mtcars$am))
barplot(table(mtcars$gear), 
        col=1:3, main='No of cars of each gear type', xlab='Gear Type', ylab='Count of Cars')

c = table(mtcars$carb)
c
barplot(table(mtcars$carb), col=1:5, horiz = T)