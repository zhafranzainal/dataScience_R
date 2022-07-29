#Q3(i)
list(year=c(2010:2020), month=c(1:12), day=c(1:31))

#Q3(ii)
D <- list(year=c(2010:2020), month=c(1:12), day=c(1:31))
D$year <- NULL; D

#Q3(iii)
list(month=unlist(D$month[-c(7:12)]), day=unlist(D$day[-c(1:10)]))
