#Q4(i)
# 𝛼= 1.5(shape), 𝛽= 1(scale)
par(mfrow=c(1,2))

x <- 1*(-log(1-runif(10000)))^(1/1.5)
hist(x, freq=F, main="Weibull from Uniform")
lines(density(x), col="midnightblue", lwd=1)

y <- rweibull(10000, 1.5, 1)
hist(y, freq=F, main="Weibull from R")
lines(density(y), col="midnightblue", lwd=1)

#Q4(ii)
# sd = 0.5(scale)
par(mfrow=c(1,2))

x <- sqrt(-2*(0.5^2) * log(1-runif(10000)))
hist(x, freq=F, main="Rayleigh from Uniform")
lines(density(x), col="midnightblue", lwd=1)

library(VGAM)
y <- rrayleigh(10000, 0.5)
hist(y, freq=F, main="Rayleigh from R")
lines(density(y), col="midnightblue", lwd=1)

#Q4(iii)
# mean = -2(location), sd = 0.5(scale)
par(mfrow=c(1,2))

library(pracma)
x <- -2 + ((0.5*sqrt(2)) * erfinv(2*runif(10000)-1))
hist(x, freq=F, main="Normal from Uniform")
lines(density(x), col="midnightblue", lwd=1)

y <- rnorm(10000, -2, 0.5)
hist(y, freq=F, main="Normal from R")
lines(density(y), col="midnightblue", lwd=1)
