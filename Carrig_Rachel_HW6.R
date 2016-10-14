require(ggplot2)
data("diamonds")


#QUESTION 1 - Create a histogram for every numeric column in the diamonds dataset

carathist <- ggplot(diamonds,aes(carat))
carathist + geom_histogram(bins = 60)

depthhist <- ggplot(diamonds,aes(depth))
depthhist + geom_histogram(bins = 60)

tablehist <- ggplot(diamonds,aes(table))
tablehist + geom_histogram(bins = 60)

pricehist <- ggplot(diamonds,aes(price))
pricehist + geom_histogram(bins = 60)

xhist <- ggplot(diamonds,aes(x))
xhist + geom_histogram(bins = 60)

yhist <- ggplot(diamonds,aes(y))
yhist + geom_histogram(bins = 60)

zhist <- ggplot(diamonds,aes(z))
zhist + geom_histogram(bins = 60)


#---
#QUESTION 2 

scat <- ggplot(diamonds, aes(x=carat, y=(price), colour=color))
scat <- scat + geom_point() + ggtitle("Diamonds - Weight to Price by Color") + xlab("Weight")
scat <- scat + ylab("Price") + labs(colour = "factor(color)")
print(scat)


#---
#QUESTION 3

scatlin <- ggplot(diamonds, aes(x=log(carat), y=log(price), colour=color))
scatlin <- scatlin + geom_point() + ggtitle("Diamonds - Weight to Price (Linear)") + xlab("Weight")
scatlin <- scatlin + ylab("Price") + labs(colour = "factor(color)")
print(scatlin)


#---
#QUESTION 4

transcat <- ggplot(diamonds, aes(x=carat, y=(price), colour=color))
transcat <- transcat + geom_point() + ggtitle("Diamonds - Weight to Price( by Color)") + xlab("Weight")
transcat <- transcat + ylab("Price") + labs(colour = "factor(color)")
print(transcat)




linear <- lm(log(price)~log(carat), data = diamonds)
residual <- resid(linear)
wtpbc <- ggplot(diamonds, aes(x=log(carat), y=residual, colour=color))
wtpbc <- wtpbc + geom_point() + ggtitle("Diamonds - Weight to Price by Color") + xlab("Weight")
wtpbc <- wtpbc + ylab("Price Residuals") + labs(colour = "factor(color)")
print(wtpbc)

