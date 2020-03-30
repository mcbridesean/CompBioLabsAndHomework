# Problem 1
triangleArea <- function(b, h) { #Creates function to calculate the area of a triangle, given base and heigh 
  triangleArea <- b * h * 0.5
  return(triangleArea)
}
triangleArea(10, 9) #Demonstrates use of function triangleArea with triangle with base of 10, height of 9

# Problem 2
# a.
myAbs <- function(x) { #Creates a function to calculate the absolute value of a given value
  myAbs <- sqrt(x ^ 2)
  return(myAbs)
}
myAbs(5) #Demonstrates use of function myAbs with positive values
myAbs(-2.3) #Demonstrates use of function myAbs with negative values

# b.
myTestVec <- c(1.1, 2, 0, -4.3, 9, -12) # Creates example vector to test function myAbs
myAbs(myTestVec) #Demonstrates use of function myAbs on a vector of positive and negative values

# Problem 3
Fib <- function(n, startNum) { #Creates a function to caluclate fibonacci, given how many values would like to be displayed and whether to start at 0 or 1
  myFib <- rep(startNum, n)
  if(startNum == 0) {
    myFib[c(1, 2)] <- c(0, 1)
  }
  if(startNum == 1) {
    myFib[c(1, 2)] <- c(1, 1)
  }
  for (i in 3:n ) {
    myFib[i] <- myFib[i - 2] + myFib[i - 1]
  }
  return(myFib)
}
Fib(15, 1) #Demonstrates use of Fib function, displaying first 15 values and starting at value 1

# Problem 4
# a.
funDiffSquare <- function(x, y) { #Creates function to return square of the difference of arguments x and y 
  diffSquare <- (x - y) ^ 2
  return(diffSquare)
}
funDiffSquare(3, 5) #Demonstrates usage of funDiffSquare on arguments 3 and 5 
funDiffSquare(c(2, 4, 6), 4) #Demonstrates usage of funDiffSquare including a vector

# b.
myMean <- function(x) { #Creates a function to calculate mean of given argument
  Mean <- sum(x)/length(x)
  return(Mean)
}
exampleVec <- c(5,15,10) #Creates a vector to demonstrate usage of myMean function
myMean(exampleVec) #Demonstrates usage of myMean function
  
DataForLab07 <- read.csv("~/Documents/Classwork/EBIO4420/CompBioLabsAndHomework/Labs/Lab07/DataForLab07.csv")
DataForLab07Vec <- DataForLab07[[1]] #Assigns dataframe to vector for manipulation
myMean(DataForLab07Vec) #Demonstrates usage of myMean function on created vector

# c.
SumOfSquares <- function(x) { #Creates a function to calculate sum of squares of a given argument
  return(sum((x - myMean(x)) ^ 2)) 
}
SumOfSquares(DataForLab07Vec) #Demonstrates usage of SumOfSquares function 
