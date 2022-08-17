#Q1(a)
set.seed(33)
x <- sample(0:999, 250, replace=T); x
y <- sample(0:999, 250, replace=T); y

#Q1(b)(i)
y[2:length(y)] - x[1:(length(x)-1)]

#Q1(b)(ii)
sin(y[1:(length(y)-1)]) / cos(x[2:length(x)])

#Q1(b)(iii)
sum(exp(-x[2:length(x)]) / (x[1:(length(x)-1)]+10))
