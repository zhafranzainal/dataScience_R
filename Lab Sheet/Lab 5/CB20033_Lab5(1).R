#Q1(i)
pnorm(-1)
a <- pnorm(0)-pnorm(-1); a
pnorm(1)-pnorm(0)
b <- pnorm(1, lower.tail = FALSE); b

#Q1(ii)
chisq.test(c(23, 31, 27, 19), p=c(0.1586553, 0.3413447, 0.3413447, 0.1586553))
# We have a chi-squared value of 5.6065. Based on the results of analysis
# acquired from the goodness-of-fit test, we accept the null hypothesis and
# conclude that the data of the generated random numbers followed a normal
# distribution since (p-value = 0.1324) > (a = 0.05).