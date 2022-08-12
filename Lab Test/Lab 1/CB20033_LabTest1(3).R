#Q3(i)
A <- rbind(c(14.5, 39, 231), c(58, 234, 66), c(217.5, 117, 33))
B <- c(600, 800, 1000)

#Q3(ii)
# 14.5pahang + 39sabah + 231sarawak = 600 m3 of Meranti logs
# 58.0pahang + 234sabah + 66sarawak = 800 m3 of Kapur logs
# 217.5pahang + 117sabah + 33sarawak = 1000 m3 of Keruing logs

solve(A) %*% B

# Therefore, Pahang=3.183024 ha, Sabah=2.051282 ha, Sarawak=2.051282 ha

#Q3(iii)
volumeSabah <- cbind(2.051282*390)
price <- cbind(0.1*250, 0.6*130, 0.3*300)

rowSums(volumeSabah %*% price)

# Therefore, the payment for the Sabah mill is RM154,400
