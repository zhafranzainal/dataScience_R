#Q1(i)
x <- c(5.625, 5.665, 5.697, 5.837, 5.863, 5.870, 5.878, 5.884, 5.908, 5.367)

t.test(x, mu=5.9)
wilcox.test(x, mu=5.9, conf.int=T)

# Based on the results of analysis acquired from t-test,
# the average weight of the grape-flavored jolly rancher is not statistically
# significant equal to 5.9 grams since (P-value=0.02928) < (a=0.05).

# Based on the results of analysis acquired from Wilcoxon test,
# the average weight of the grape-flavored jolly rancher is not statistically
# significant equal to 5.9 grams since (P-value=0.003906) < (a=0.05).

#Q1(ii)
jpeg('boxplot.jpg')
boxplot(x, horizontal=T)
dev.off()

# The conclusion drawn from the t-test and Wilcoxon test are consistent with
# each other where the average weight of the grape-flavored jolly rancher is
# not statistically significant equal to 5.9 grams. However, the boxplot
# indicated the data were asymmetrically distributed, hence Wilcoxon test was
# the more appropriate hypothesis testing.
