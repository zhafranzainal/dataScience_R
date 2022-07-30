#Q1
M <- cbind(c(1, 1, 3), c(2, -1, 1), c(1, 0, 1))

#LHS
round(solve(M) + M)

#RHS
library(expm)    
(M %^% 2) - (6*diag(rep(1, 3)))

# Since the values of LHS=RHS=matrix(c(0, 0, 7, 1, -3, 6, 2, 1, -2), 3), therefore M^-1 + M = M^2 - 6I.
