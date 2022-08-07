#Q1
x1 = c(92, 90, 87, 105, 86, 83, 102)
x2 = c(100, 108, 98, 110, 114, 97, 94)
x3 = c(143, 149, 138, 136, 139, 120, 145)
x4 = c(147, 144, 160, 149, 152, 131, 134)
x5 = c(142, 155, 119, 134, 133, 146, 152)

y <- data.frame(x1, x2, x3, x4, x5); y

summary(y)

# Since the median and mean of the pull-out test dataset are almost equal,
# the distribution can be said almost symmetric and the data is normally
# distributed. With that being said, both the median or the mean can be used
# as our measure of central tendency.