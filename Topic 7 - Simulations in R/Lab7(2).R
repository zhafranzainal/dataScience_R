#Q2(i)
dbinom(8, 8, 0.90)
# P(X=8) = 0.4305

#Q2(ii)

# 1st approach
pbinom(6, 8, 0.90)

# 2nd approach
sum(dbinom(0:6, 8, 0.90))

# P(X<=6) = 0.1869

#Q2(iii)

# 1st approach
pbinom(5, 8, 0.90, lower.tail = F)

# 2nd approach
sum(dbinom(6:8, 8, 0.90))

# 3rd approach
1 - sum(dbinom(0:5, 8, 0.90))

# P(X>=6) = 0.9619