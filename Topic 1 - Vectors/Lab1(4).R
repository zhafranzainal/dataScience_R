View(iris); iris
library("dplyr")
newdata <- iris %>% filter(Species=="versicolor")
apply(newdata[,-5], 2, mean)
apply(newdata[,-5], 2, var)