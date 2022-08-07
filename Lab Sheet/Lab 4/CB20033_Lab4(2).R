#Q2(i)
x <- read.csv('Wholesale.csv'); x
str(x)

dataQual <- data.frame(Region = c(x$Region), Channel = c(x$Channel))
dataQuan <- data.frame(Fresh = c(x$Fresh), Milk = c(x$Milk),
                       Grocery = c(x$Grocery), Frozen = c(x$Frozen),
                       Detergents_Paper = c(x$Detergents_Paper),
                       Delicassen = c(x$Delicassen))

dataQual
dataQuan

#Q2(ii)
barplot(table(dataQual))

#Q2(iii)
boxplot(dataQuan)
