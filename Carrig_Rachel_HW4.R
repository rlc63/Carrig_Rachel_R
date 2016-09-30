# QUESTION 1
# First, we are going to create the Vectors described.
# a)
a <- c(1:20)
print (a)
# b)
b <- c(20:1)
print (b)
# c) FIX THIS ONE
c <- c(1:20, 19:1)
print (c)
# d)
tmp <- c(4,6,3)
print(tmp)
# e)
print(rep(tmp, 10))
# f)
print(rep(tmp,1,31))
# g)
print(rep(tmp,times=c(10,20,30)))


# QUESTION 2
# Create a vector of the values of excos(x) at 
# x = 3,3.1,3.2,...,5.9,6.

x <- seq(3,6,by=0.1)
exp(x)*cos(x)

# QUESTION 3
# a)
g <-c(0.1^seq(3,36,by=3))*(0.2^seq(1,34,by=3))
print(g)
# b)
