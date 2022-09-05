#1. DATA PREPARATION

# i. Load data
data <- read.csv('Malaysia_energy_data.csv', header=T); data

# ii. Remove null values
dataNew <- na.omit(data); dataNew

# iii. Export cleaned data into a new file (csv)
write.csv(dataNew, 'new_Malaysia_energy_data.csv')

# iv. Load and remove unnecessary variable
newData <- read.csv('new_Malaysia_energy_data.csv', header=T); newData
newData$X <- NULL; newData

#2. DESCRIPTIVE ANALYSIS

# i. View first few data
head(newData)

# ii. Structure of dataset
str(newData)

# iii. Summary of dataset
summary(newData)
summary(newData$fossil_energy_per_capita)

# iv. Boxplot
library(ggplot2)

jpeg('boxplot1.jpg')
ggplot(newData, aes(fossil_energy_per_capita, population, group=1)) + geom_boxplot() + coord_flip()
dev.off()

jpeg('boxplot2.jpg')
ggplot(newData, aes(fossil_energy_per_capita, year, group=1)) + geom_boxplot() + coord_flip()
dev.off()

jpeg('boxplot3.jpg')
ggplot(newData, aes(fossil_energy_per_capita, fossil_cons_change_twh, group=1)) + geom_boxplot() + coord_flip()
dev.off()

jpeg('boxplot4.jpg')
ggplot(newData, aes(fossil_energy_per_capita, fossil_cons_change_pct, group=1)) + geom_boxplot() + coord_flip()
dev.off()

jpeg('boxplot5.jpg')
ggplot(newData, aes(fossil_energy_per_capita, fossil_fuel_consumption, group=1)) + geom_boxplot() + coord_flip()
dev.off()

jpeg('boxplot6.jpg')
ggplot(newData, aes(fossil_energy_per_capita, fossil_share_energy, group=1)) + geom_boxplot() + coord_flip()
dev.off()

#3. DATA ANALYSIS (Multiple Linear Regression)

# i. Pairwise relationship among variables (Scatterplots)
jpeg('scatterplots.jpg')
pairs(newData)
dev.off()

# ii. Pearson correlation coefficient
cor(newData)

# Based on the analysis result, the Pearson correlation coefficients are 0.9849,
# -0.3725, 0.4442, 0.3073, 0.9854 and 0.9920 for year, fossil_cons_change_pct,
# fossil_share_energy, fossil_cons_change_twh, fossil_fuel_consumption, and
# population, respectively, which indicated that there are strong positive linear
# association between year and fossil energy per capita, weak negative linear
# association between fossil_cons_change_pct and fossil energy per capita, weak
# positive linear association between fossil_share_energy and fossil energy per
# capita, weak positive linear association between fossil_cons_change_twh and
# fossil energy per capita, strong positive linear association between
# fossil_fuel_consumption and fossil energy per capita, and strong positive linear
# association between population and fossil energy per capita.

# iii. Model selection
library(MASS)
mlr <- stepAIC(lm(fossil_energy_per_capita~., data=newData), direction="both"); mlr
summary(mlr)

mlr1 <- lm(fossil_energy_per_capita~fossil_cons_change_pct +fossil_share_energy +fossil_cons_change_twh +fossil_fuel_consumption +population, data=newData); mlr1
summary(mlr1)

# The analysis result shows that the estimated regression coefficients are
# 𝛽̂0 = -51740, 𝛽̂1 = -65.36, 𝛽̂2 = 470.6, 𝛽̂3 = 38.62, 𝛽̂4 = 9.692, and
# 𝛽̂5 = 0.001033, respectively. Therefore, the following multiple linear
# regression model is obtained:

# 𝑦̂ = -51740 -65.36𝑥̂1 +470.6𝑥̂2 +38.62𝑥̂3 +9.692𝑥̂4 +(1.033E-3)𝑥̂5

# Since the coefficient of determination is 0.9956, it indicates that 99.56% of
# the total variation of the annual fossil energy per capita can be predicted by
# annual percentage change in fossil, share of primary energy consumption comes
# from fossils, annual change in fossils consumption, primary energy consumption
# from fossils and Malaysia population.

# Furthermore, the F-test, which (p-value < 2.2E−16) < (a=0.05) indicated that
# there is a statistically significant linear relationship between fossil
# energy per capita with annual percentage change in fossil, share of primary
# energy consumption comes from fossils, annual change in fossils consumption,
# primary energy consumption from fossils and Malaysia population.

# iv. Check assumptions
par(mfrow=c(1,2))

# Test for constant variance
plot(fitted(mlr1), resid(mlr1)) #Residual plot
abline(h=0, col="darkblue", lwd=2) #Add line to the residual plot
library(lmtest)
bptest(mlr1) 

# Test for normality
qqnorm(resid(mlr1)) #Quantile-quantile plot
qqline(resid(mlr1), col="darkblue", lwd=2) #Add line to the QQ plot
shapiro.test(resid(mlr1))

# Based on the analysis results, there are no violation of the homoscedasticity
# (constant variance) assumption, since the residual plot does not depict any
# special pattern, which can also be authenticated using Breusch-Pagan test
# since the (p-value=0.1863) > (a=0.05).

# Meanwhile, the assumption of normality is also fulfilled. The points of
# residuals are scattered on the straight line, and the Shapiro-Wilk test also
# indicated that the (p-value=0.2881) > (a=0.05). In particular, the residuals
# are normally distributed.

# To summarize, a further analysis is not required and 𝑦̂ = -51740 -65.36𝑥̂1
# +470.6𝑥̂2 +38.62𝑥̂3 +9.692𝑥̂4 +(1.033E-3)𝑥̂5 can be described as the best
# fitted model.

# v. Actual vs predicted data

# Create data frame of actual and predicted values
values <- data.frame(actual=dataNew$fossil_energy_per_capita, predicted=predict(mlr1)); values

# Plot actual vs predicted data
ggplot(values, aes(x=predicted, y=actual)) +geom_point() +geom_abline(intercept=0, slope=1) +labs(x='Predicted Values', y='Actual Values', title='Actual vs. Predicted Values')

# Create function to check prediction error
GoF <- function(x, y)
{
  RMSE <- sqrt(mean((x-y)^2))
  MAE <- mean(abs(x-y))
  MAPE <- mean(abs((x-y)/x))*100
  c(RootMeanSquareError=RMSE, MeanAbsoluteError=MAE, MeanAbsolutePercentageError=MAPE)
}

# Check prediction error
GoF(values$actual, values$predicted)

# Based on the error metrics, our multiple linear regression model can be said
# able to predict annual fossil energy per capita pretty accurately since our 
# RMSE is 749.2114. The number might seem high and far from zero, but if we
# normalize the RMSE value as 749.21141 / (36209 – 3160), the normalized RMSE is
# 0.02266. The same can be said for MAE. MAPE, on the other hand, is just slightly
# above 5% which is not an exaggeration to say as excellent.