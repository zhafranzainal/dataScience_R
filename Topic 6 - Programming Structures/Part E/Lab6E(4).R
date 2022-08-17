#Q4
Entry1 <- c(100, 41, 97, 45, -34, 39, 31)
Entry2 <- c(63, 24, 36, 20, -15, 25, 56)
Entry3 <- c(81, -39, 32, -43, -9, 26, 46)

x <- data.frame(Name = LETTERS[1:7], Entry1, Entry2, Entry3); x

# Replace negative values with 0
x[x<0] <- 0; x

# Replace negative values with NA
x[x<0] <- NA; x
