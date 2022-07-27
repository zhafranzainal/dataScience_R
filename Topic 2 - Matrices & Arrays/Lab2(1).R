#Q1(i)
set.seed(9241)
x <- matrix(sample(1:99, 12), 4, byrow=T, dimnames=list(c('a', 'b', 'c', 'd'), c('e', 'f', 'g'))); x

#Q1(ii)
set.seed(9241)
x <- matrix(sample(1:99, 12), 4, dimnames=list(c('Row1', 'Row2', 'Row3', 'Row4'), c('Col1', 'Col2', 'Col3'))); x
