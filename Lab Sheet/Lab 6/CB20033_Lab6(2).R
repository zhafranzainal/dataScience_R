#Q2(i)
# 𝑦 = 6.948+0.054𝑥+𝜀
# 𝑋~(147, 85.6^2)
# 𝜀~(0, 5^2)

set.seed(2033)
X <- runif(200, min = 147, max = 85.6^2)
Y <- runif(200, min = 0, max = 5^2)
dataRandom <- data.frame(X, Y); dataRandom

#Q2(ii)

# Scatter diagram
plot(dataRandom$X, dataRandom$Y, xlab="X", ylab="Y")
abline(lm(Y~X, data=dataRandom), col="darkorange", lwd=2)

# Pearson correlation coefficient
cor(dataRandom)

# Based on the analysis result, the Pearson correlation coefficient is -0.04757,
# which indicated that there is a weak negative linear association between
# X and Y.

#Q2(iii)
summary(lm(dataRandom$Y~dataRandom$X, data=dataRandom))
