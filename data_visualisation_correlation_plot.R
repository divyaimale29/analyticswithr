#Correlation Plot in R----
#Use cor( ) function to produce correlations in R and
#we use function corrgram( ) to plot correlograms in R.

# mtcars dataset is natively available in R
head(mtcars)
# Correlation matrix from mtcars
# with mpg, cyl, and disp as rows 
# and hp, drat, and wt as columns 
x <- mtcars[1:3]
y <- mtcars[4:6]
z<-cor(x, y)
z

#We use function corrplot( ) in package "corrplot" to plot correlograms.
install.packages("corrplot")
library(corrplot)
corrplot(z, type = "upper", 
         tl.col = "black", tl.srt = 45)

#We use function corrgram( ) in package "corrgram" to plot correlograms.
install.packages("corrgram")
library(corrgram)

# First
corrgram(mtcars, order=TRUE, lower.panel=panel.shade, 
         upper.panel=panel.pie, text.panel=panel.txt, 
         main="Car Milage Data in PC2/PC1 Order") 

# Second
corrgram(mtcars, order=TRUE, lower.panel=panel.ellipse, 
         upper.panel=panel.pts, text.panel=panel.txt, 
         diag.panel=panel.minmax, main="Car Milage Data in PC2/PC1 Order") 

# Third
corrgram(mtcars, order=NULL, lower.panel=panel.shade, 
         upper.panel=NULL, text.panel=panel.txt, 
         main="Car Milage Data (unsorted)")
