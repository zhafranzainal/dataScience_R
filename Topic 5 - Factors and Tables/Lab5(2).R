#Q2(i)
str(ToothGrowth)

ToothGrowth$supp <- as.factor(ToothGrowth$supp)
str(ToothGrowth)

#Q2(ii)

# 1st approach
table(ToothGrowth$supp)

# 2nd approach
xtabs(~ToothGrowth$supp)
