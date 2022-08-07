#Q1(i)
V1 = c('Mercury', 'Venus', 'Earth', 'Mars',
       'Jupiter', 'Saturn', 'Uranus', 'Neptune')

V2 = c(rep('Terrestrial', 4), rep('Gas Giant', 4))

V3 = c(0.06, 0.82, 1.00, 0.11, 317.80, 95.20, 14.60, 11.20)

V4 = c(rep('No', 4), rep('Yes', 4))

x <- data.frame(V1, V2, V3, V4); x

#Q1(ii)
names(x) <- c('Planet', 'Category', 'Mass', 'Rings')

#Q1(iii)
x$diameter <- c(0.382, 0.949, 1.000, 0.532, 11.209, 9.449, 4.007, 3.883); x