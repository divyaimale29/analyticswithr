#Line Plots in R----
#We can build them using the plot() function available in base R.

#plot
X=1:10
Y=11:20
plot(x=X, y=Y)
plot(x=X, y=Y, type='s') #points
plot(x=X, y=Y, type='p', pch=11) #points, plotting symbol=13
#see internet for different plotting symbols
plot(x=X, y=Y, type='p', cex=2) #points, double the size

#Another Example of Line Plots:

x <- c(1:5); y <- x # create some data 
par(mfrow=c(2,4)) # all plots on one page 
opts = c("p","l","o","b","c","s","S","h") 
for(i in 1:length(opts)){ 
  heading = paste("type=",opts[i]) 
  plot(x, y, type="n", main=heading) 
  lines(x, y, type=opts[i]) 
}

# Create Line Chart
?Orange
View(Orange)
str(Orange)
# convert ordinal factor to numeric for convenience 
Orange$Tree <- as.numeric(Orange$Tree) 
ntrees <- max(Orange$Tree)

# get the range for the x and y axis 
xrange <- range(Orange$age) 
yrange <- range(Orange$circumference) 

# set up the plot 
plot(xrange, yrange, type="n", xlab="Age (days)",
     ylab="Circumference (mm)" ) 
colors <- rainbow(ntrees) 
linetype <- c(1:ntrees) 
plotchar <- seq(18,18+ntrees,1)

# add lines 
for (i in 1:ntrees) { 
  tree <- subset(Orange, Tree==i) 
  lines(tree$age, tree$circumference, type="b", lwd=1.5,
        lty=linetype[i], col=colors[i], pch=plotchar[i]) 
} 

# add a title and subtitle 
title("Tree Growth", "example of line plot")

# add a legend 
legend(xrange[1], yrange[2], 1:ntrees, cex=0.8, col=colors,
       pch=plotchar, lty=linetype, title="Tree")

