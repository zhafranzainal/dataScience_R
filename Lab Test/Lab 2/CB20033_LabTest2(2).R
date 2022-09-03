#Q2(i)
x <- read.csv('Smoking.csv'); x

# 1st approach
y <- table(x$Gender, x$Opinion)

# 2nd approach
y <- xtabs(~Gender + Opinion, data=x)

#Q2(ii)

# 1st approach
chisq.test(y)

# 2nd approach
summary(y)

# The statistical test is unable to provide the exact value for the
# statistical test.

#Q2(iii)
fisher.test(y)

# The statistical test is able to provide the exact value for the
# statistical test.