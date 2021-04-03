nest <- read.csv("C:/Users/hjp4906/Desktop/Exam 2/nest2.csv")
year <- nest$modayyr
year2 <- str_sub(string = year, start = 1, end=4)
head(year)
head(year2)
library(stringr)

nest$year <- year2
year2 <- as.Date(x = year2, format = '%Y')
colnames(nest)[1] <- "lon"
colnames(nest)[2] <- 'lat'

write.csv(nest, 'nest2.csv')
library('dplyr')
nest[nest == 0] <- NA
sums <- aggregate(nest$youngnum, by=list(year=nest$year), FUN=sum)
nest[is.na(nest)] <- 0 
