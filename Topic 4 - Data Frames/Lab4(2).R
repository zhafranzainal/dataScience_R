#Q2(i)
summary(subset(iris, Species == "setosa")[,-5])
summary(subset(iris, Species == "versicolor")[,-5])
summary(subset(iris, Species == "virginica")[,-5])

# Table for analysis

Species = c(rep('setosa', 4), rep('versicolor', 4), rep('virginica', 4))

att <- c('sepal.length', 'sepal.width', 'petal.length', 'petal.width')
Characteristics = c(rep(att, 3))

library("dplyr")
setosa <- iris %>% filter(Species == "setosa")
versicolor <- iris %>% filter(Species == "versicolor")
virginica <- iris %>% filter(Species == "virginica")

Average = c(
  median(setosa$Sepal.Length),
  median(setosa$Sepal.Width),
  median(setosa$Petal.Length),
  median(setosa$Petal.Width),
  median(versicolor$Sepal.Length),
  median(versicolor$Sepal.Width),
  median(versicolor$Petal.Length),
  median(versicolor$Petal.Width),
  median(virginica$Sepal.Length),
  median(virginica$Sepal.Width),
  median(virginica$Petal.Length),
  median(virginica$Petal.Width)
)

Variation = c(
  IQR(setosa$Sepal.Length),
  IQR(setosa$Sepal.Width),
  IQR(setosa$Petal.Length),
  IQR(setosa$Petal.Width),
  IQR(versicolor$Sepal.Length),
  IQR(versicolor$Sepal.Width),
  IQR(versicolor$Petal.Length),
  IQR(versicolor$Petal.Width),
  IQR(virginica$Sepal.Length),
  IQR(virginica$Sepal.Width),
  IQR(virginica$Petal.Length),
  IQR(virginica$Petal.Width)
)

Table <- data.frame(Species, Characteristics, Average, Variation); Table

# The species of iris taken into account in this analysis comprises
# Setosa, Versicolor, and Virginica.

# In addition, the characteristics of the iris considered in this analysis
# are included sepal length, sepal width, petal length, and petal width.

# Based on the table, the result of the analysis depicted that the sepal length
# frequently indicates the highest average compared to the
# other characteristics of the iris regardless of the species.

# Contrarily, the petal width frequently indicates the lowest average compared
# to the other iris characteristics corresponding to the three species.

# In terms of consistency, the petal width for Setosa and Versicolor indicated
# the most consistent in terms of measurement compared to the
# other iris characteristics, while the petal length for Virginica indicated
# the least consistent across the iris characteristics.

# On the other hand, the sepal width, sepal length, and petal length respective
# for Setosa, Versicolor, and Virginica indicated the least consistent among
# the measurement of iris characteristics.

#Q2(ii)
# In comparing the significance of the average petal width among the
# three species of the iris, the appropriate hypothesis testing is one-way ANOVA
# using F-test when all assumptions in conducting ANOVA are fulfilling.
# However, the Kruskal-Wallis H test will be conducted when the violation of
# assumptions of ANOVA exist.
