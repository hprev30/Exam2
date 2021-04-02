nest <- read.csv("C:/Users/hjp4906/Desktop/Exam 2/Alaska_Bald_Eagle_Nest_Sites_(USFWS).csv")
year <- nest$modayyr
year2 <- str_sub(string = year, start = 1, end=4)
head(year)
head(year2)
library(stringr)

nest$year <- year2
year2 <- as.Date(x = year2, format = '%Y')

write.csv(nest, 'nest.csv')
