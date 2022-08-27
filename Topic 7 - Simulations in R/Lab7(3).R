#Q3(i)
dpois(3, 5.2)
# P(X=3) = 0.1293

#Q3(ii)

# 1st approach
ppois(9, 5.2, lower.tail = F)

# 2nd approach
1 - sum(dpois(0:9, 5.2))

# P(X>=10) = 0.0397

#Q3(iii)

# 1st approach
ppois(6, 5.2) - ppois(3, 5.2)

# 2nd approach
sum(dpois(4:6, 5.2))

# P(4 <=X<= 6) = 0.4943