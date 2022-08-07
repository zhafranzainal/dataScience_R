#Q4(i)
x <- read.csv('Supermarket Transactions.csv'); x

# Product category versus gender
pcGender <- xtabs(~x$Product.Category + x$Gender)

# Product category versus marital status
pcMarital <- xtabs(~x$Product.Category + x$Marital.Status)

# Product category versus state
pcState <- xtabs(~x$Product.Category + x$State.or.Province)

#Q4(ii)

fisher.test(pcGender, simulate.p.value=T)
fisher.test(pcMarital, simulate.p.value=T)
fisher.test(pcState, simulate.p.value=T)

# There are no statistically significant relationship between
# the product category respective with gender, marital status, and state.

#Q4(iii)
# Based on the results of analysis acquired from Fisher’s exact tests,
# the statistical hypothesis testings indicated that there are no statistically
# significant relationship between the product category respective with gender,
# marital status, and state since the p-value for the Fisher’s exact tests are
# respectively 0.2469, 0.7371, and 0.4413 which are greater than the level of
# significance, namely a = 0.05.