#Q1(i)
set.seed(033)
X <- qgamma(runif(10000), shape = 3, scale = 4); X

#Q1(ii)
jpeg('kernelDensityPlot.jpg')
plot(density(X), main='Kernel Density Plot')
dev.off()
