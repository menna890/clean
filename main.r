data <- data.frame(
team=c('A', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'),
points=c(4, 4, NA, 18, 6, 12, 14, 8, 13, 86),
rebounds=c(9, 9, 7, 6, 8, NA, 9, 14, 12, 11),
assists=c(2, 2, NA, 7, 6, 6, 9, 10, NA, 14))
# Duplicates
duplicated(data)
sum(duplicated(data))
data= unique(data)
sum(duplicated(data)) 
# Data Structure
is.integer(data$age)
data$age = as.integer(data$age)
is.integer(data$age)
is.integer(data$rnd)
data$rnd = as.integer(data$rnd)
is.integer(data$rnd)
is.integer(data$total)
data$total= as.integer(data$total)
is.integer(data$total)
is.integer(data$count)
data$total=as.integer(data$count)
is.integer(data$count)
# Finding missing values (NA)
is.na(data)
sum(is.na(data))
data= na.omit(data)
# handling outlier
boxplot(dff[,c(3,5,6,7)])
outlier= boxplot(data$count)$out
data[which(data$count %in% outlier),]
data= data[-which(data$count %in% outlier),]
# kmean
my_data <- data[, -c(3,5,6,7)]
num<- as.integer(readline("enter the number of centers: "))
Kmean_clustering <- kmeans(my_data, centers = n)

