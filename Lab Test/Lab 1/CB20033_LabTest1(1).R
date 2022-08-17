#Q1(a)
X1 = c(13.75, 13.00, 14.25, 12.00, 12.25)
X2 = c(13.75, 14.50, 12.75, 14.50, 13.25)
X3 = c(12.75, 12.50, 12.00, 14.00, 13.00)
X4 = c(16.75, 14.25, 14.50, 15.50, 13.75)
DataStructureA <- data.frame(X1, X2, X3, X4)
DataStructureA

#Q1(b)
DataStructureB <- array(c(1:10), dim=c(3, 4, 3), dimnames=list(paste0('R', 1:3), paste0('C', 1:4), paste0('M', 1:3)))
DataStructureB

#Q1(c)
DataStructureC <- matrix(1:25, nrow = 5, ncol = 5, byrow = T)
DataStructureC

#Q1(d)
A <- c('Rice', 'Maize', 'Oats', 'Barley', 'Wheat', 'Sorghum')
B <- list(Rye = 'Rye', Quinoa = 'Quinoa', Millet = 'Millet')
DataStructureD <- list(A, Cereals = B)
DataStructureD
