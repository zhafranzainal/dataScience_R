#Q3(i)
# The mistake that causes the occurrence of the error When run the given code
# is missing the quotation mark since the elements are characters/strings.

#Q3(ii)
a <- rbind(Alex = c(25, 177, 57, 'Female', 'Yes'),
           Lilly = c(31, 163, 69, 'Female', 'No'),
           Mark = c(23, 190, 83, 'Male', 'No'),
           Oliver = c(52, 179, 75, 'Male', 'Yes'),
           Martha = c(76, 163, 70, 'Female', 'Yes'),
           Lucas = c(49, 183, 83, 'Male', 'No'),
           Caroline = c(26, 164, 53, 'Female', 'Yes')
           )

x <- as.data.frame(a)

a
x

#Q3(iii)
names(x) <- c('Age', 'Height', 'Weight', 'Gender', 'Working'); x

#Q3(iv)
str(x)

x$Age <- as.double(x$Age)
x$Height <- as.double(x$Height)
x$Weight <- as.double(x$Weight)
str(x)

Variables = c('Age', 'Height', 'Weight', 'Gender', 'Working')
Types = c(rep('Quantitative', 3), rep('Qualitative', 2))
Level_of_Measurement = c(rep('ratio-level', 3), rep('nominal-level', 2))

Table <- data.frame(Variables, Types, Level_of_Measurement); Table
