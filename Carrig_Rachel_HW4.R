# QUESTION 1
# First, we are going to create the Vectors described.
# a)
a <- c(1:20)
#this defines the variable a, which is the integers 1 through 20 in that order
print (a) #we print out our variable 
# b)
b <- c(20:1)
#this defines the variable b, which is the integers 20 to 1 in that order
print (b) #we print out our variable 
# c) FIX THIS ONE
c <- c(1:20, 19:1)
#here, we want to define c to be the integers 1-20-1, but where 20 is only defined once.
#we use two commands to do so
print (c) #we print out our variable
# d)
tmp <- c(4,6,3)
#here we are creating the variable tmp as defined
print(tmp) #we print out our variable
# e)
print(rep(tmp, 10))
#using the previously created tmp, we print out the variable so that it
#repeats the sequence 10 times.
# f)
print(rep(tmp,1,31))
#using the previously created tmp, we print out the variable so that it
#prints 31 characters of the sequence, allowing it to end on the 11th 4
# g)
print(rep(tmp,times=c(10,20,30)))
#using the previously created tmp, we print each number in c the number of
#times designated (10 for 4, 20 for 6, and 30 for 3)

# QUESTION 2
# Create a vector of the values of excos(x) at x = 3,3.1,3.2,...,5.9,6.
x <- seq(3,6,by=0.1)
#here we define our variable x so that it is the sequence of numbers
#between 3 and 6 with .1 added each time
exp(x)*cos(x)
#we use that variable and plug it into the desired equation, creating our
#desired vector

# QUESTION 3
# a)
d <-c(0.1^seq(3,36,by=3))*(0.2^seq(1,34,by=3))
#here, we define a variable d such that it is a sequence of 0.1 times 0.2
#where the exponents change by three given the provided sequence
print(d) #we print out our variable
# b) 
e <-c(2^(1:25))/(1:25)
#here, ew define a variable e such that it takes 2 to the exponents 1-25 over
#the integers 1-25
print(e) #we print out our variable

# QUESTION 4
# a)
f <-c(10:100)
sum(f^3+4*f^2)
# b)
g <- 1:25
sum((2^g)/g + 3^g/(g))

# QUESTION 5
# a)
paste("label", sep = " ", 1:30)
# b)
paste("fn", sep = "", 1:30)

#QUESTION 6
set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
# a)
yVec[-1] - xVec[-length(xVec)]
# b)
sin(yVec[-length(yVec)]) / cos(xVec[-1])
# c)
xVecLen <- length(xVec)
xVec[-c(xVecLen-1,xVecLen)] + 2*xVec[-c(1,xVecLen)] - xVec[-c(1,2)]
# d)
sum(exp(-xVec[-1])/(xVec[-length(xVec)]+10))

#QUESTION 7
# a)
yVec[yVec>600]
# b) 
s = c(yVec)
s[yVec>600]
# c)
xVec[yVec>600]
# d)
sqrt(abs(xVec-mean(xVec)))
# e)
sum( yVec>max(yVec)-200 )
# f)
sum(xVec%%2==0)
# g)
xVec[order(yVec)]
# h)
yVec[c(T,F,F)]

# QUESTION 8
sum(cumprod(seq(2,38,b=2)/seq(3,39,b=2)))+1