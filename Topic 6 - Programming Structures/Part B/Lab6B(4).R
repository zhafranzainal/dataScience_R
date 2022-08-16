#Q4(i)

# One-way analysis of variance (ANOVA) is inappropriate to use in evaluating
# whether the exercise can alleviate depression since the one-way ANOVA is
# merely appropriate to be used when the dependent variable is a continuous
# variable. However, the Likert scale score is classified as an ordinal-level
# scale, hence the Kruskal-Wallis H test is more appropriate to be used.

#Q4(ii)
x <- c(23, 26, 51, 49, 58, 37, 29, 44)
y <- c(22, 27, 39, 29, 46, 48, 49, 65)
z <- c(59, 66, 38, 49, 56, 60, 56, 62)

data <- c(x,y,z)
level <- gl(3, 8, labels = c('0 min', '20 min', '60 min'))

kruskal.test(data, level)

# Based on the results of the analysis acquired from Kruskal-Wallis H test,
# there is a statistically significant difference that the exercise can
# alleviate depression since (P-value=0.02612) < (a=0.05).

# A post-doc analysis, such as Dunn’s test can be carried out to identify which
# exercise can alleviate depression.

library(FSA)
dunnTest(data, level)

# At a=0.05, 20 minutes and 60 minutes of jogging per day are the only two
# exercises that are statistically significantly different from each other
# since (adjusted p-value=0.04481367).