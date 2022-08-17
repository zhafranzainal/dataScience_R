#Q2(i)
X <- c(3.26, 2.26, 2.62, 2.62, 2.36, 3.00, 2.62, 2.40, 2.30, 2.40)
Y <- c(1.80, 1.46, 1.54, 1.42, 1.32, 1.56, 1.36, 1.64, 2.00, 1.54)

XY <- data.frame(X,Y); XY

colMeans(XY)
apply(XY, 2, sd)

#Q2(ii)

# 1st approach
summary(XY)

# 2nd approach (alternative)
fivenum(X); fivenum(Y)

# 3rd approach (alternative)
min(X); quantile(X, 0.25); median(X); quantile(X, 0.75); max(X)
min(Y); quantile(Y, 0.25); median(Y); quantile(Y, 0.75); max(Y)
