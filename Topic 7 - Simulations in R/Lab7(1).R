#Q1(i)
x <- read.csv('Salary_Data.csv'); x

# Scatter diagram
plot(x$YearsExperience, x$Salary, xlab="Experience", ylab="Salary")
abline(lm(Salary~YearsExperience, data=x), col="darkorange", lwd=2)

# Pearson correlation coefficient
cor(x)

# Based on the analysis result, the Pearson correlation coefficient is 0.9782,
# which indicated that there is a strong positive linear association between
# the years of working experience and the annual salary.

#Q1(ii)

# 1st approach
y <- lm(x$Salary~x$YearsExperience, data=x); y

# 2nd approach
y <- summary(lm(x$Salary~x$YearsExperience, data=x)); y

# The analysis result shows that the estimated regression coefficients are
# 𝛽̂0 = 25792.2 and 𝛽̂1 = 9450.0, respectively. Therefore, the following
# simple linear regression model is obtained:

# 𝑦̂ = 25792.2 + 9450𝑥

#Q1(iii)
# Constant variance
plot(fitted(y), resid(y))
abline(h=0, col="darkorange", lwd=2)
library(lmtest)
bptest(y)

# Normality
qqnorm(resid(y))
qqline(resid(y))
shapiro.test(resid(y))

# Based on the analysis results, there are no violation of the homoscedasticity
# (constant variance) assumption, since the residual plot does not depict any
# special pattern, which can also be authenticated using Breusch-Pagan test
# since the (p-value=0.5276) > (a=0.05).

# Meanwhile, the assumption of normality is also fulfilled. The points of
# residuals are scattered on the straight line, and the Shapiro-Wilk test also
# indicated that the (p-value=0.1952) > (a=0.05). In particular, the residuals
# are normally distributed.

# Furthermore, the F-test, which (p-value < 2.2E−16) < (a=0.05) indicated that
# there is a statistically significant linear relationship between the years of
# working experience and the annual salary.

# To summarize, a further analysis is not required and 𝑦̂ = 25792.2 + 9450𝑥
# can be described as the best fitted model.

#Q1(iv)
# Based on the analysis results, the coefficient of determination (adjusted R-squared)
# is 0.9554, which indicated that 95.54% of the total variation of the annual
# salary can be predicted by the years of working experience.
