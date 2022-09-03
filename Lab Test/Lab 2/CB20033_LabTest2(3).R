#Q3(i)
train <- read.csv('Training_Energy.csv'); train

model <- lm(Y~., data=train); model

# Checking for the homoscedasticity assumption
library(lmtest)
bptest(model)

# Checking for the independence assumption
library(DescTools)

# 1st approach
RunsTest(resid(model))

# 2nd approach
RunsTest(model$residuals)

# Checking for the normality assumption
qqnorm(resid(model))
qqline(resid(model))

# 1st approach
shapiro.test(resid(model))

# 2nd approach
shapiro.test(model$residuals)

# Checking for the multicollinearity issue
VIF(model)

#Q3(ii)
test <- read.csv('Test_Energy.csv'); test

# 1st approach
library(Metrics)
RMSE <- rmse(test$Yobs, test$Ypred); RMSE
MAE <- mae(test$Yobs, test$Ypred); MAE
MAPE <- mape(test$Yobs, test$Ypred)*100; MAPE
c(RootMeanSquareError=RMSE, MeanAbsoluteError=MAE, MeanAbsolutePercentageError=MAPE)

# 2nd approach
GoF <- function(x,y)
{
  RMSE <- sqrt(mean((x-y)^2))
  MAE <- mean(abs(x-y))
  MAPE <- mean(abs((x-y)/x))*100
  c(RootMeanSquareError=RMSE, MeanAbsoluteError=MAE, MeanAbsolutePercentageError=MAPE)
}
GoF(test$Yobs, test$Ypred)
