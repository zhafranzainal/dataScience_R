#Q3(i)
A <- rbind(c(0.05*290, 0.10*390, 0.70*330), c(0.20*290, 0.60*390, 0.20*330), c(0.75*290, 0.30*390, 0.10*330)); A
B <- c(600, 800, 1000); B

#Q3(ii)
# 14.5pahang + 39sabah + 231sarawak = 600 m3 of Meranti logs
# 58.0pahang + 234sabah + 66sarawak = 800 m3 of Kapur logs
# 217.5pahang + 117sabah + 33sarawak = 1000 m3 of Keruing logs

x <- solve(A) %*% B; x

# Therefore, Pahang=3.183024 ha, Sabah=2.051282 ha, Sarawak=2.051282 ha

#Q3(iii)
sum(A[,2] * x[2] * c(250, 130, 300))

# Therefore, the payment for the Sabah mill is RM154,400
