#pie chart in R----
#We can build them using the pie() function available in base R.
x = c(10,20,40,50)
pie(x)
xlabels = c('A','B','C','D')
pie(x, labels=xlabels)

#pie on mtcars
(cylinders = table(mtcars$cyl))
pie(x=cylinders)
pie(x=cylinders, labels=c('4-Cyl','6-Cyl','8-Cyl'))
pie(x=cylinders, labels=paste(c('4-Cyl','6-Cyl','8-Cyl'),'\n', cylinders, ' cars', sep='-')) #'\n' wraps the output
