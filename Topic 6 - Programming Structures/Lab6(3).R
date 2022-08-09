#Q3
x1 = c(27, 20, 20, 25, 22, 30, 27, 24, 21, 24, 30, 27, 22, 29, 24)
y1 = c(23, 31, 28, 27, 28, 24, 32, 30, 28, 28, 25, 26, 22, 26, 24)
x2 = c(9, 67, 42, 36, 92, 28, 80, 49, 29, 91, 95, 55, 5, 11, 34)
y2 = c(138, 158, 161, 187, 195, 102, 148, 162, 171, 189, 140, 147, 103, 110, 105)

distance<-function(x,y){

  dxy1 <- sqrt(sum((x-y)^2))
  dxy2 <- sqrt(mean((x-y)^2))
  dxy3 <- sum(abs(x-y))
  dxy4 <- sum(abs(x-y)/(abs(x)+abs(y)))
  
  c(ED=dxy1, RMSE=dxy2, MD=dxy3, CD=dxy4)

}

distance(x1, y1)
distance(x2, y2)

# Based on the results of the analysis, the closeness for vectors x1 and y1
# are closer to each other compared to vectors x2 and y2 since the former pairs
# have values of distance metrics below than 68 while the latter pairs have
# values of distance metrics more than 1493.
