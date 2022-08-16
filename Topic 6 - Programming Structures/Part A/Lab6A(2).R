#Q2(i)
mat <- cbind(c(41, 119, 27, 246, 174, 251), c(170, 174, 119, 203, 230, 80), c(210, 8, 165, 176, 193, 199), c(54, 226, 148, 189, 87, 194), c(61, 233, 58, 182, 190, 151), c(189, 88, 36, 244, 233, 192))

fi <- function(mat){
  
  y <- matrix(0, nrow(mat), ncol(mat))
  
  ker <- cbind(c(0,-1,0), c(-1,4,-1), c(0,-1,0))
  
  for(i in 2:(nrow(mat)-1)){
    for(j in 2:(ncol(mat)-1)){
      y[i,j] <- sum(ker*mat[(i-1):(i+1),(j-1):(j+1)])
    }
  }
  
  y

}

# The control statement that has been applied above is nested for loops.

#Q2(ii)
fi(mat)

# The data structure for y is a 6x6 matrix
# with all the border values equal to zero.