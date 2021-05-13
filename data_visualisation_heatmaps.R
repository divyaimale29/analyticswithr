
#Heat Maps in R----
#We can build them using the heatmap() function available in base R.

#The mtcars dataset:
data <- as.matrix(mtcars)

#Default Heatmap
heatmap(data)

#Using 'scale' to normalize
heatmap(data, scale="column")

#Native palette from R
heatmap(data, scale="column", col = cm.colors(256))
heatmap(data, scale="column", col = terrain.colors(256))

install.packages("RColorBrewer")
library(RColorBrewer)
coul <- colorRampPalette(brewer.pal(8, "PiYG"))(25)
heatmap(data, scale="column", col = coul)

# Add classic arguments like main title and axis title
heatmap(data, Colv = NA, Rowv = NA, scale="column", col = coul, xlab="variable", ylab="car", main="heatmap")
#--------------------------

#Adding Labels, Title, Legend in Base Plots----

#Adding Legend: Add a legend with the legend() function.
attach(mtcars)
boxplot(mpg~cyl, main="Milage by Car Weight",
        ylab="cylinders", xlab="Milage", horizontal=TRUE,
        col=terrain.colors(3))
legend("topright", inset=.05, title="Number of Cylinders",
       c("4","6","8"), fill=terrain.colors(3), horiz=TRUE)

#Titles: Use the title( ) function to add Title to a plot.
boxplot(mpg~cyl)+
  title(main="main title", sub="sub-title")