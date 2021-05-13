
#Mosaic Plots----
#We can build them using the mosaic() function available in base R.

# Mosaic Plot Example
install.packages("vcd")
library(vcd)
?HairEyeColor
View(HairEyeColor)
mosaic(HairEyeColor, shade=TRUE, legend=TRUE)

dftable <- xtabs(  ~ gear + cyl, data=df)
mosaic(dftable, shade=TRUE, legend=TRUE)

dftable_1 <- xtabs(  ~ gear + cyl + am, data=df)
mosaic(dftable_1, shade=TRUE, legend=TRUE)

#Include shade=TRUE to color the figure, and legend=TRUE to display a legend for the Pearson residuals.
#mosaic plot
mosaicplot(~ gear + cyl, data = df, shade=T, color = TRUE)

mosaicplot(~ Sex + Age + Survived, data = Titanic, shade=T, color = TRUE)