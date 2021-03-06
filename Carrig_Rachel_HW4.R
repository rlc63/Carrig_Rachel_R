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
#first we define variable f so that it's the integers between 10-100
sum(f^3+4*f^2)
#we then take the sum as described using our variable f
# b)
g <- 1:25
#first we defie a variable g as integers between 1 and 25
sum((2^g)/g + 3^g/(g))
#we then take the sum as described using our variable g

# QUESTION 5
# a)
paste("label", sep = " ", 1:30)
#here, the first part of our paste is the word label, then we use
#a separator to add a space between that and the integers 1-30
# b)
paste("fn", sep = "", 1:30)
#here, the first part is fn, and then we want the integers 1-30
#to be directly following the fn, without a space, so we have the 
#separater be nothing

#QUESTION 6
#first, we copy what is given
set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)
# a)
yVec[-1] - xVec[-length(xVec)]
#we take the second yVec, and subtract the value of the first xVec
#and continue in that sequence
# b)
sin(yVec[-length(yVec)]) / cos(xVec[-1])
#here, we take the sin of the first yVec length divided by the second xVec 
#and continue in that sequence
# c)
xVecLen <- length(xVec)
#first, we define the variable xVecLen to be the length of xVec
xVec[-c(xVecLen-1,xVecLen)] + 2*xVec[-c(1,xVecLen)] - xVec[-c(1,2)]
#then, we proceed to evaluate the function as described
# d)
sum(exp(-xVec[-1])/(xVec[-length(xVec)]+10))
#here we calculate the sum of the described equation using the sum function

#QUESTION 7
# a)
yVec[yVec>600]
#we take the values of yVec that are greater than 600
# b) 
which(yVec>600)
#we want to know the positions of those in a, so we use the which
#function to find those positions
# c)
xVec[yVec>600]
#here, we take the values in xVec corresponding to those in yVec
#that are greater than 600
# d)
sqrt(abs(xVec-mean(xVec)))
#here, we take the square root of the absolute values of what's 
#described using those built-in functions
# e)
sum( yVec>max(yVec)-200 )
#here, we sum together the "TRUE" values as given in the function
#such that they are within 200 of the maximum value
# f)
sum(xVec%%2==0)
#using the given operator, we determine which fit the description and
#add the total number of true's together
# g)
xVec[order(yVec)]
#here we order the xVec values so that they match the yVec value
# h)
yVec[c(T,F,F)]
#here we pick out every third element in yVec using true/false

# QUESTION 8
sum(cumprod(seq(2,38,b=2)/seq(3,39,b=2)))+1
#here we take the sum of the above sequence, and then add one to it
#to get the desired sum