#Q2(i)
x <- read.csv('Corrosion.csv'); x
str(x)

#Q2(ii)
table(x$Material, x$Leaking)

#Q2(iii)

chisq.test(x$Material, x$Leaking, correct=FALSE)
# We have a chi-squared value of 0.39668. Based on the results of analysis
# acquired from the test of homogeneity, we accept the null hypothesis and
# conclude that the proportion of corrosion resistance is the same among
# Material A, Material B, and Material C since (p-value = 0.8201) > (a = 0.05).

set.seed(31)
fisher.test(xtabs(~x$Material + x$Leaking), simulate.p.value=T)
# Based on the results of analysis acquired from Fisher’s exact test,
# the statistical hypothesis testing indicated that the proportion of
# corrosion resistance is the same among Material A, Material B, and
# Material C since the p-value for the Fisher’s exact test is 0.8201
# which is greater than the level of significance, namely a = 0.05.