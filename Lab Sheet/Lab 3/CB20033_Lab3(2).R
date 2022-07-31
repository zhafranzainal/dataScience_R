#Q2
set.seed(928)
data <- list(
  values <- 10:50,
  names <- c('M', 'H', 'Q', 'Y', 'J', 'C', 'Y', 'H'),
  list1 <- list(1,2,3,4,5),
  d.matrix <- diag(5),
  hdarray <- array(sample(1:999,20), dim=c(3,6,4))
  )

#Q2(i)
fivenum(values)

#Q2(ii)
unlist(list1)

#Q2(iii)
apply(hdarray[,,3], 1, mean)
apply(hdarray[,,3], 1, var)
