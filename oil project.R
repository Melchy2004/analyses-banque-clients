library(readr)
library(dplyr)
library(ggplot2)


oil_data <-read.csv("C:/Users/xxx/Downloads/archive (6)/oil_production_statistics.csv")
oil_data

head(oil_data)
tail(oil_data)
summary(oil_data)
dim(oil_data)
str(oil_data)
colSums(is.na(oil_data))
sum(duplicated(oil_data))
data <- oil_data[!duplicated(oil_data),]
data
any(is.na(oil_data))

#production over time

ggplot(oil_data, aes(x=year, y=product)) + geom_line() +labs(title = "Annual oil production", x="year", y="product")


unique(oil_data$flow)





