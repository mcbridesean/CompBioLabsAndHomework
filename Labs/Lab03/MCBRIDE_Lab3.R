###Commenting is a little bit inconsistent, some comments come above the command (following direction of lab outline) and some are after commands on same line

#lab step #3:Creates two variables, one a number of chips and one a number of guests
NumberOfChips <- 5
NumberOfGuests <- 8
#lab step #5:Creates one variable, number of bags of chips eaten per guest
GuestEatingAverage <- 0.4
#Calculates expected amount of leftover chips 
LeftoverChips <- NumberOfChips - (NumberOfGuests*GuestEatingAverage)
#Creates vectors of the order of movie rankings by each person
SelfRankings <- c(7,9,8,1,2,3,4,6,5)
PennyRankings <- c(5,9,8,3,1,2,4,7,6)
LennyRankings <- c(6,5,4,9,8,7,3,2,1)
StewieRankings <- c(1,9,5,6,8,7,2,3,4)
#Creates variables of Penny and Lenny's rankings of at 4th position in corresponding vector
PennyIV <- PennyRankings[4]
LennyIV <- LennyRankings[4]
#Creates a matrix of the four ranking vectors created above
RankingMatrix <- cbind(SelfRankings,PennyRankings,LennyRankings,StewieRankings)
#Inspects the structure of PennyIV, PennyRankings,and RankingMatrix
str(PennyIV) 
str(PennyRankings) 
str(RankingMatrix)
#Creates a data frame of the four ranking vectors created above
DataFrame <- data.frame(SelfRankings,PennyRankings,LennyRankings,StewieRankings)
AsDataFrame <- as.data.frame(RankingMatrix)
#Differences of DataFrame and RankingMatrix are that the data frame is easily interpreted through the Global Environment, can be manipulated different ways
#Similarities of DataFrame and RankingMatrix are that they both have the same numerical information within
dim(DataFrame) #Displays dimensions of DataFrame
dim(RankingMatrix) #Displays dimensions of RankingMatrix
str(DataFrame) #Displays structure of DataFrame
str(RankingMatrix) #Displays structure of RankingMatrix
DataFrame == RankingMatrix #Compares information of DataFrame and RankingMatrix
typeof(DataFrame) #Displays type of storage mode of DataFrame
typeof(RankingMatrix) #Displays type of storage mode of RankingMatrix
#Creates a vector of Episode Names in roman numerals
EpisodeNames <- c("I","II","III","IV","V","VI","VII","VIII","IX")
#Assign the Episode Names (roman numerals) to the rownames of DataFrame and RankingMatrix
row.names(DataFrame) <- EpisodeNames  
row.names(RankingMatrix) <- EpisodeNames
#Print third row of RankingMatrix
RankingMatrix[3,]
#Print fourth column of DataFrame
DataFrame[,4]
#Print row 5 column 1 of RankingMatrix
RankingMatrix[5,1]
#Print row 2 column 2 of RankingMatrix
RankingMatrix[2,2]
#Print rows 4 through 6 of all columns of RankingMatrix
RankingMatrix[4:6,]
#Print rows 2, 5, 7 of all columns of RankingMatrix
RankingMatrix[c(2,5,7),]
#Print rows 4, 6 of columns 2, 4 of RankingMatrix
RankingMatrix[c(4,6),c(2,4)]
#Prints row "III" and column "PennyRankings" of RankingMatrix
RankingMatrix["III", "PennyRankings"]
#Swapping Lenny's Rankings for rows 2 and 5 in DataFrame
Lenny2And5SwapStorage <- DataFrame[2,3]
DataFrame[2,3] <- DataFrame [5,3]
DataFrame[5,3] <- Lenny2And5SwapStorage
#Reversing swap of Lenny's Rankings for rows II and V in DataFrame
LennyIIAndVSwapStorage <- DataFrame[2,3]
DataFrame[2,3] <- DataFrame[5,3]
DataFrame[5,3] <- LennyIIAndVSwapStorage
#Swapping Lenny's Rankings of rows 2 and 5 through $ operator
Lenny2And5OperatorSwapStorage <- DataFrame$LennyRankings[2]
DataFrame$LennyRankings[2] <- DataFrame$LennyRankings[5]
DataFrame$LennyRankings[5] <- Lenny2And5OperatorSwapStorage

