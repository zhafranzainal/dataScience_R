#Q2
A <- cbind(c(-2, -3), c(4, 2)); B <- cbind(c(1, 6), c(3, 1))

#Q2(i)
det(A) # Determinant for matrix A
det(B) # Determinantt for matrix B

#Q2(ii)
det(A %*% B)
det(A) * det(B)

# Since the values of LHS=RHS=-136, therefore |AB| = |A||B|.

#Q2(iii)
A %*% B

#Q2(iv)
solve(A) %*% B