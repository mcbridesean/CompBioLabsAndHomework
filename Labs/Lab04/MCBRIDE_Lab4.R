### Part I. Practice writing "for loops".
### 1.
for (i in 1:10){ #Creates for loop printing "hi" to console 10 times
  print( "hi" )
}

### 2.
TimPiggyBank <- 10 #Starting amount, USD
TimAllowance <- 5 #Weekly allowance, USD
TimsGumAddiction <- 2 #Number of times he purchases gum in a week
GumPrice <- 1.34 #Including tax, USD

Weeks <- 1:8 #Number of weeks to pass (8)

for ( i in Weeks ) { #Creates for loop printing Tim's piggy bank holdings after his allowance and gum addiction every week
  TimPiggyBank <- TimPiggyBank + TimAllowance - ( TimsGumAddiction * GumPrice )
  print ( paste ( "Week", i, TimPiggyBank ) )
}

### 3.
PopulationSize <- 2000 #Population size, starting at 2000
ShrinkRate <- .05 #Yearly shrinking rate of 5%
Years <- seq( 1 : 7 ) #Sequence of 7 years

for ( i in Years ) { #Creates for loop printing Population size over 7 years at constant shrink rate decrease 
  PopulationSize <- PopulationSize - ( ShrinkRate * PopulationSize )
  print( paste ( "Year", i, PopulationSize ) )
}

### 4.
n <- 2500 #Starting population size
K <- 10000 #Carrying capacity, 10000 individuals
r <- .8 #Intrinsic growth rate

print( paste ( "1", n ) ) 
for ( t in seq ( 2, 13 ) ) { #Creates a vector of discrete-time logistic growth of above given values over time
  n[t] = n[t-1] + ( r * n[t-1] * ( K - n[t-1] ) / K )
  print( paste ( t, n[t] ) )
}
print(n[12])

### Part II. Practice writing “for loops” AND practice storing the data produced by your loops in arrays.
### 5.
### a.
FiveA <- rep( 0 , 18 ) #Makes a vector of 18 0s
print(FiveA)

### b.
X <- seq( 1 , 18 ) #Makes a sequence vector of 1 to 18, assigns it to variable X
for ( i in X ) { #Multiplies each ith value of variable X by 3 and assigns that value to corresponding place
  X[i] <- ( X [i] * 3 )
}
print(X)

### c.
nn <- 18 #Length of vector
FiveC <- rep( 0, nn) #Makes a rep vector of 0, nn long
FiveC[1] <- 1 #Makes first entry of vector FiveC equal to 1
print(FiveC)

### d.
for ( i in 2:nn ) { #The value stored in ith position in the vector is equal to one plus twice the value of the previous entry 
  FiveC[i] <- ( 1 + ( 2 * FiveC[i-1] ) )
}
print(FiveC)

### 6.

nnn <- 20 #Length of vector
Six <- rep( 0, nnn ) #Creates rep vector of 0s, nnn long
Six[2] <- 1 #Makes first entry of vector Six equal to 1
for ( i in 3:20 ) { #Calculates first 20 Fibonacci numbers, where the first number is equal to 0
  Six[i] <- Six[i-2] + Six[i-1]
}
print( Six )

### 7. 
abundance <- 2500 #Starting population size
K <- 10000 #Carrying capacity, 10000 individuals
r <- .8 #Intrinsic growth rate
time <- seq( 1, 13 )

for ( t in time[2:13] ) { #Creates a vector of population abundance over time
  abundance[t] = abundance[t-1] + ( r * abundance[t-1] * ( K - abundance[t-1] ) / K )
  print( paste ( t, abundance[t] ) )
}

plot(time,abundance) #Plots time,abundance vectors created above


