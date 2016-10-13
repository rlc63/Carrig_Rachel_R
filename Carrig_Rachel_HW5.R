#before beginning, I install the diamonds data set
library('ggplot2')
data("diamonds")
#we create the variable df, which can be used with any dataframe. 
#here, we have used the dataframe diamonds, to show that the codes work
#for all df = diamonds, but diamonds can be replaced by any dataframe.
df = data.frame(diamonds)

#QUESTION 1 - FIX
attributes({df}) #this lists out the attributes of the dataframe
str(df) #this displays the internal structure of the dataframe
summary(df) #this provides descriptive statistics of the dataframe

ncol(df) 
#this prints the number of columns in the dataframe

#---
#QUESTION 2
nrow(df) 
#this prints the number of rows in the dataframe

#---
#QUESTION 3
cat(colnames({df}),sep="\n")
#here, we use the cat function to concatenate the column names, meaning
#it prints the column names as a list. then, we use the sep="\n"
#to separate each name in colnames by one line, so they print on their own lines

#---
#QUESTION 4
classcol = lapply(df, class)
print(classcol)
#we use the lapply here to determine the class of each column, and the 
#print that variable resulting in the names of the columns followed
#by the types of columns

#---
#QUESTION 5
numdf <- sapply(df, is.numeric)
#first, we create the variable numdf, which will be the numeric columns
#in the dataframe
sapply(df[,numdf], mean)
#then, we take the numeric columns defined in our variable within the
#dataframe and take the means of each of those columns, resulting in
#the output

#---
#QUESTION 6
factordf <- sapply(df, is.factor)
print(factordf)

dfcol <- diamonds[2]
bin50 <- (max(dfcol[[2]])-min(dfcol[[2]]))/50
dfcol <- ggplot(dfcol, aes(x=dfcol[[2]]))
dfcol <- dfcol +
  geom_histogram(colour = "green",
                 fill = "blue",
                 binwidth=bin50)
  labs(x=names(dfcol)[[2]])
print(dfcol)


for (i in df) {
  hist(factordf[],main=factordf[i],col="blue",border="green")
}

sapply(df[,factordf], )
hist(factordf, breaks = "Sturges",
     freq = NULL, probability = !freq,
     include.lowest = TRUE, right = TRUE,
     density = NULL, angle = 45, col = NULL, border = NULL,
     main = paste("Histogram of" , xname),
     xlim = range(breaks), ylim = NULL,
     xlab = xname, ylab,
     axes = TRUE, plot = TRUE, labels = FALSE,
     nclass = NULL, warn.unused = TRUE)


#---
#QUESTION 7

df[is.na(df),]
#here, we take the dataframe and find the number of rows within 
#the dataframe where the value is NA. the , ensures the output is the
#number of rows

