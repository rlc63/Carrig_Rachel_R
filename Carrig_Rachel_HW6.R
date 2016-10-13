#MAY OR MAY NOT NEED - ggplot2(diamonds,aes(diamonds$carat,diamonds$price))

require(ggplot2)
data("diamonds")


#QUESTION 1 - 
numdf <- sapply(diamonds, is.numeric)
hist(numdf)
geom = "histogram"
