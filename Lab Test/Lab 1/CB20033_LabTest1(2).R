#Q2(i)
x <- read.csv('MineralContent_Missing.csv'); x
x[x==9999] <- NA; x

set.seed(33)
library(Amelia)
dataNew <- amelia(x, 5)$imputations; dataNew
dataClean <- (dataNew$imp1 + dataNew$imp2 + dataNew$imp3 + dataNew$imp4 + dataNew$imp5)/5; dataClean

#Q2(ii)
Mode <- function(measurement)
{
  u<-unique(measurement)
  mode <- u[which.max(tabulate(match(measurement, u)))]
  mode
}

# 1st approach
mean(dataClean$Dominant_Ulna)
median(dataClean$Dominant_Ulna)
Mode(dataClean$Dominant_Ulna)

# 2nd approach
apply(dataClean[3], 2, mean)
apply(dataClean[3], 2, median)
Mode(dataClean$Dominant_Ulna)

#Q2(iii)

# Suppose that all measurements on the non-dominant sides are
# symmetric distributed.

# 1st approach
var(dataClean$Radius)
var(dataClean$Humerus)
var(dataClean$Ulna)

# 2nd approach
apply(dataClean[,4:6], 2, var)
