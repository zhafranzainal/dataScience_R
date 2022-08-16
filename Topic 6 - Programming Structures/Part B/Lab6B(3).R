#Q3
treatBefore <- c(85, 70, 40, 65, 80, 75, 55, 20)
treatAfter <- c(75, 50, 50, 40, 20, 65, 40, 25)

par(mfrow = c(1,1))
boxplot(treatBefore-treatAfter, horizontal=T)

wilcox.test(treatBefore, treatAfter, exact=F, paired=T)

# Since the boxplot indicated the paired difference is asymmetrically distributed
# and the sample size is n<30, hence the Wilcoxon signed rank test is applied in
# solving the problem. Based on the results of the analysis, there is no
# statistically significant difference before and after the treatment
# since (P-value=0.05747) > (a=0.05).
