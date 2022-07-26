#Q1(a)
set.seed(33)
x <- sample(0:999, 250, replace=T)
y <- sample(0:999, 250, replace=T)

#Q1(b)(i)
a = y[-1] - x[-length(x)]

#Q1(b)(ii)
b = sin(y[-1]) / cos(x[-length(x)])

#Q1(b)(iii)
c = sum(exp(-x[-1])/x[-1]+10)