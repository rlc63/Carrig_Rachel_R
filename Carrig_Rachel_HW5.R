#Overall Comment: Good Exercise especially the understanding of sapply and lapply function!

#before beginning, I require the ggplot2 so that we can use the diamonds dataset
require(ggplot2)

#we import the data from the diamonds dataframe
data("diamonds")

#we create the variable df, which can be used with any dataframe. 
#here, we have used the dataframe diamonds, to show that the codes work
#for all df = diamonds, but diamonds can be replaced by any dataframe.
#additionally, df could be replaced within the code directly with the name of
#a different dataset
df = data.frame(diamonds)

#QUESTION 1 - FIX

#PART 1) Print to the console all methods and attributes associates with a dataframe.

attributes({df}) #this lists out the attributes of the dataframe
#parameters are a dataframe, and the return is the attributes

print(methods(class = class(df))) #this prints the methods associated with our dataframe. 
#parameters are a dataframe and the return is the methods.

str(df) #this displays the internal structure of the dataframe
#parameters are a dataframe, and the return is its internal structure

summary(df) #this provides descriptive statistics of the dataframe
#parameters are a dataframe, and the return is its descriptive statistics

#George: Good use of various functions to show necessary information about the dataset

#PART 2) Write code to determine the number of columns in a dataframe
ncol(df) 
#this prints the number of columns in the dataframe
#parameters are a dataframe and the return is an integer totaling its number of columns

#---
#QUESTION 2 - determine how many rows are in a dataframe

nrow(df) #this prints the number of rows in the dataframe
#parameters are a dataframe and the return is an integer totaling its number of rows


#---
#QUESTION 3 - extract the column names from a dataframe and print the
#names of the columns (one per line) to the console

cat(colnames({df}),sep="\n")
#here, we use the cat function to concatenate the column names, meaning
#it prints the column names as a list. then, we use the sep="\n"
#to separate each name in colnames by one line, so they print on their own lines
#the parameters are a dataframe, and the return is the column names on their own lines


#---
#QUESTION 4 - determine the type of each column. Print the type of each column to the console

classcol = lapply(df, class)
print(classcol)
#we use the lapply here to determine the class of each column, and then 
#print that variable resulting in the names of the columns followed
#by the types of columns
#parameters are the dataframe and class, and the return is the name and class of each column


#---
#QUESTION 5 - loop through any dataframe and calculate the mean of every numeric column. 
#Label the output with the name of the column

numdf <- sapply(df, is.numeric)
#first, we create the variable numdf, which will be the numeric columns
#in the given dataframe
sapply(df[,numdf], mean)
#then, we take the numeric columns defined in our variable within the
#dataframe and take the means of each of those columns
#parameters are the numeric columns in the dataframe, and the return
#is the means of those columns


#---
#QUESTION 6 - loop through any dataframe and create a frequency table for every factor column. Label the output with the name of the column

factordf <- df[sapply(df, is.factor)]
#we create a variable factordf that takes keeps only the factor columns in the dataframe
summary(factordf)
#we then use the summary function to create a frequency table of our variable
#the column names print with this function
#parameters are factor columns in the dataframe, and the return is a frequency table for those columns


#---
#QUESTION 7 

#PART 1) - will loop through any dataframe and determine the number of rows containing NA (missing value) in each column

print(apply(sapply(df,is.na), 2, sum))
#starting from the inside, we use sapply to find all NA in our dataframe using is.na
#we then use apply to take the sum of the columns (which is what the 2 is) for the sapply
#we then print the result, which in this instance shows there are 0 NA in each column
#of the dataframe

#PART 2) - loop through any dataframe and determine the percentage of rows containing an NA in any of the columns.

paste(sum(!complete.cases(df))/nrow(df),sep="","%")
#starting from the inside, we use the opposite (!) of complete cases to get the rows with NA
#in our dataframe. we then take the sum to get the number of those rows. then, we divide by the total
#number of rows in our dataframe to get the percentage. finally, we paste together the percentage with a %
#symbol, with no separator so that the number appears with the %.
#the parameters are dataframes and the result is a percentage of the rows that have NAs
