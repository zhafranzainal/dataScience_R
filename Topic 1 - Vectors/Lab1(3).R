song <- read.csv('https://raw.githubusercontent.com/AGeoCoder/Million-Song-Dataset-HDF5-to-CSV/master/SongCSV.csv')

View(song)
colnames(song)

library(dplyr)
a <- song %>%
  select(ArtistLatitude, ArtistLongitude, Duration, Tempo); a
b <- as.matrix(a); b

set.seed(6683)
library(Amelia)
amelia(b, 1) $imputations