#Q2(i)
X <- c(6.06, 6.04, 6.11, 6.06, 6.06, 6.07, 6.06, 6.08, 6.05, 6.09)
Y <- c(6.08, 6.03, 6.04, 6.07, 6.11, 6.08, 6.08, 6.10, 6.06, 6.04)

wilcox.test(X, Y, exact=F)

# There is no statistically significant difference between the fill weights of
# packages from the East and West lines since (P-value=0.8782) > (a=0.05).

#Q2(ii)
par(mfrow = c(1,2))

qqnorm(X)
qqline(X)

qqnorm(Y)
qqline(Y)

# Both datasets X and Y are not normally distributed since the QQ-plot for both
# datasets are deviated from forming a straight line, respectively.
# In other words, the normality assumption for the two-independent samples
# t-test is inappropriate to be used in this study.