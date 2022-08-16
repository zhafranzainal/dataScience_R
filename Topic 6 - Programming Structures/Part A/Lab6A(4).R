#Q4
apply(subset(iris, Species=='setosa')[,-5], 2, mean)
apply(subset(iris, Species=='setosa')[,-5], 2, median)
apply(subset(iris, Species=='setosa')[,-5], 2, sd)
apply(subset(iris, Species=='setosa')[,-5], 2, var)
cor(subset(iris, Species=='setosa')[,-5])

apply(subset(iris, Species=='versicolor')[,-5], 2, mean)
apply(subset(iris, Species=='versicolor')[,-5], 2, median)
apply(subset(iris, Species=='versicolor')[,-5], 2, sd)
apply(subset(iris, Species=='versicolor')[,-5], 2, var)
cor(subset(iris, Species=='versicolor')[,-5])

apply(subset(iris, Species=='virginica')[,-5], 2, mean)
apply(subset(iris, Species=='virginica')[,-5], 2, median)
apply(subset(iris, Species=='virginica')[,-5], 2, sd)
apply(subset(iris, Species=='virginica')[,-5], 2, var)
cor(subset(iris, Species=='virginica')[,-5])

# Alternative approach
descriptive<-function(x){
  
  mn <- colMeans(x)
  md <- apply(x, 2, median)
  sd <- apply(x, 2, sd)
  vr <- apply(x, 2, var)
  corr <- cor(x)
  
  list(Mean=mn, Median=md, Standard_Deviation=sd, Variance=vr, Correlation=corr)
  
}

descriptive(subset(iris, Species=='setosa')[,-5])
descriptive(subset(iris, Species=='versicolor')[,-5])
descriptive(subset(iris, Species=='virginica')[,-5])