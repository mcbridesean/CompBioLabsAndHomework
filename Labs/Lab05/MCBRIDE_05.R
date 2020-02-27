# MCBRIDE_LAB05
# Part 1.
# 1.
z <- 50 # Numeric value of your choosing to compare to 5
if (z > 5){
  print(paste("Variable z (", z, ") is larger than 5."))
}

#Same as above if, but either variable can be changed for comparison
x <- 50 # Numeric value of your choosing to compare to y
y <- 5 # Numeric value of your choosing to compare to x
if (x > y){
  print(paste("Variable x (", x, ") is larger than variable y (", y, ")."))
}

# 2.
ExampleData <- read.csv("ExampleData.csv") # Imports ExampleData.csv to dataframe
ExampleDataVector <- ExampleData[[1]] # Assigns dataframe variable 1 to an object to be manipulated
ExampleDataVector <- ExampleData$x # Alternative way to assign dataframe variable 1 to object

# a.
for (i in 1:length(ExampleDataVector)){ # Assigns NA to all vector positions <0
  if (ExampleDataVector[i] < 0){
    ExampleDataVector[i] <- NA
  }
}

# b.
ExampleDataVector[is.na(ExampleDataVector)] <- NaN # Assigns NaN to all vector positions ==Na

# c.
ExampleDataVector[which(is.nan(ExampleDataVector))] <- 0 # Assigns 0 to all vector positions ==NaN

# d.
sum(ExampleDataVector >= 50 & ExampleDataVector <= 100) # Sums number of vector positions that are >=50 and <=100

# e.
FiftyToOneHundred <- ExampleDataVector[which(ExampleDataVector >=50 & ExampleDataVector <= 100)] # Creates new vector from values of DataVector which >=50 & <=100

# f.
write.csv(FiftyToOneHundred, "FiftyToOneHundred.csv")

# 3. 
CO2EmissionsData <- read.csv("CO2_data_cut_paste.csv")
CO2GasEmissionsData <- CO2EmissionsData[[3]] # Assigns third variable (Gas) of Emissions Data data frame to a vector
CO2TotalEmissionsData <-CO2EmissionsData[[2]] # Assigns second variable (Total) of Emissions Data data frame to a vector

# a.
NonZeroPositions <- which(CO2GasEmissionsData != 0) # Creates a vector of the variables of CO2GasEmissionsData which != 0
print(paste("Year", CO2EmissionsData[NonZeroPositions[1], 1], "value", CO2EmissionsData[NonZeroPositions[1],3])) # Prints the first year of a non-zero position and that year's value

# b.

Between200and300 <- which(CO2TotalEmissionsData > 200 & CO2TotalEmissionsData< 300) # Creates a vector of the variables of CO2TotalEmissionsData which are >200 and <300
print(paste("Year", CO2EmissionsData[Between200and300, 1], "value", CO2EmissionsData[Between200and300, 2])) # Prints the years and values of values which are >200 and <300

# Part 2.
# Lotka-Volterra predator-prey model
# n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
# p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])
# Parameter Values
totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators
time <- rep(1:totalGenerations)
p <- rep(NA, totalGenerations)
p[1] <- initPred
n <- rep(NA, totalGenerations)
n[1] <- initPrey

for (t in 2:totalGenerations){ # Runs predator-prey model for generations 2 through 1000
  n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
  p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1])
  if (n[t] < 0) # Assigns ALL negative values to 0 as there can not be "negative" abundance
    n[t] <- 0
  if (p[t] < 0)
    p[t] <- 0
}

plot(time,n) # Creates a plot of time on x axis (in generations) and n on y axis
lines(time,n) # Adds a line to made plot
plot(time,p) # Creates a plot of time on x axis (in generations) and p on y axis
lines(time,p) # Adds a line to made plot

myResults <- cbind(time,n,p) # Creates matrix through concatenation of 3 vectors (columns) of 1000 values (rows)
colnames(myResults) <- c("TimeStep","PreyAbundance","PredatorAbundance") # Names columns to better reflect data

write.csv(x = myResults, file = "PredPreyResults.csv") # Writes csv 