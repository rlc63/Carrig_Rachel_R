require(ggplot2)
#we first require ggplot2, which we will use to manipulate the data
data("diamonds")
#we then bring in our dataset, diamonds


#QUESTION 1 - Create a histogram for every numeric column in the diamonds dataset

#for each histogram, we first create a variable, then use ggplot and the dataset to
#create an aesthetic mapping of that variable. we then display a histogram
#dividing the data up into 60 bins, and titling it as appropriate using ggtitle

carathist <- ggplot(diamonds,aes(carat))
#first, we create the carat histogram variable as described above
carathist + geom_histogram(bins = 60) + ggtitle("Carat Histogram") + xlim(0, 3)
#we then plot the histogram of that variable. NOTE - I have limited the histogram
#using xlim to remove the outliers from the histogram.  To view the full histogram, 
#remove the + xlim(0, 3)

depthhist <- ggplot(diamonds,aes(depth))
#first, we create the depth histogram variable as described above
depthhist + geom_histogram(bins = 60) + ggtitle("Depth Histogram") + xlim(55, 70)
#we then plot the histogram of that variable. NOTE - I have limited the histogram
#using xlim to remove the outliers from the histogram.  To view the full histogram, 
#remove the + xlim(55, 70)

tablehist <- ggplot(diamonds,aes(table))
#first, we create the table histogram variable as described above
tablehist + geom_histogram(bins = 60) + ggtitle("Table Histogram") + xlim(50, 70)
#we then plot the histogram of that variable. NOTE - I have limited the histogram
#using xlim to remove the outliers from the histogram.  To view the full histogram, 
#remove the + xlim(55, 70)

pricehist <- ggplot(diamonds,aes(price))
#first, we create the price histogram variable as described above
pricehist + geom_histogram(bins = 60) + ggtitle("Price Histogram")
#we then plot the histogram of that variable.

xhist <- ggplot(diamonds,aes(x))
#first, we create the x histogram variable as described above
xhist + geom_histogram(bins = 60) + ggtitle("X Histogram") + xlim(3, 10)
#we then plot the histogram of that variable. NOTE - I have limited the histogram
#using xlim to remove the outliers from the histogram.  To view the full histogram, 
#remove the + xlim(3, 10)

yhist <- ggplot(diamonds,aes(y))
#first, we create the y histogram variable as described above
yhist + geom_histogram(bins = 180) + ggtitle("Y Histogram") + xlim(3, 10)
#we then plot the histogram of that variable. NOTE - I have limited the histogram
#using xlim to remove the outliers from the histogram.  To view the full histogram, 
#remove the + xlim(3, 10)

zhist <- ggplot(diamonds,aes(z))
#first, we create the z histogram variable as described above
zhist + geom_histogram(bins = 60) + ggtitle("Z Histogram") + xlim(2, 6)
#we then plot the histogram of that variable. NOTE - I have limited the histogram
#using xlim to remove the outliers  from the histogram.  To view the full histogram, 
#remove the + xlim(2, 6)


#---
#QUESTION 2 - Create a simple scatter plot of Weight and Price using Color as a facet.

scat <- ggplot(diamonds, aes(x=carat, y=(price), colour=color))
#first, we define our variable scat to be a ggplot object using the diamonds dataset and
#aesthetically mapping the x axis to carat, the y axis to price, and the colour to color
scat <- scat + geom_point() + ggtitle("Diamonds - Weight to Price by Color") + xlab("Weight")
#we then plot the data on a scatter plot, titling the graph, x-axis, y-axis, and key as appropriate
scat <- scat + ylab("Price") + labs(colour = "factor(color)")
print(scat) #finally, we print the result


#---
#QUESTION 3 - remove the non-linearity and replot

scatlin <- ggplot(diamonds, aes(x=log(carat), y=log(price), colour=color))
#first we define our variable scatlin to be a ggplot object using the diamonds dataset and
#aesthetically mapping the x axis to the log of carat, the y axis to the log of price, and
#colour to color
scatlin <- scatlin + geom_point() + ggtitle("Diamonds - Weight to Price (Linear)") + xlab("Weight")
#then, we plot the data on a scatter plot, titling the graph, x-axis, y-axis, and key as appropriate
scatlin <- scatlin + ylab("Price") + labs(colour = "factor(color)")
print(scatlin) #finally, we print the result


#---
#QUESTION 4 - Remove the linear trend (create a linear model and use the transformed weight
#on the x-axis and the residuals on the y-axis)

linear <- lm(log(price)~log(carat), data = diamonds)
#first, we create a variable linear, in which we fit a linear model of the log of price
#to the log of carat within the diamonds dataset
residual <- resid(linear)
#using that variable, we create a new variable that extracts model residuals from it
wtpbc <- ggplot(diamonds, aes(x=log(carat), y=residual, colour=color))
#we then define wtpbc to be a ggplot object using the diamonds dataset and 
#aesthetically mapping the x axis to the log of carat, the y axis to our new variable
#residual, and the colour to color
wtpbc <- wtpbc + geom_point() + ggtitle("Diamonds - Weight to Price by Color") + xlab("Weight")
#then, we plot the data on a scatter plot, titling the graph, x-axis, y-axis, and key as appropriate
wtpbc <- wtpbc + ylab("Price Residuals") + labs(colour = "factor(color)") + theme(legend.position="top")
#then, we move the legend to the top of the scatterplot to match the example
print(wtpbc) #finally, we print the result