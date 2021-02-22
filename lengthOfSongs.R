data <- read.csv("data.csv")
head(data)

year <- substr(data[, "release_date"], 0, 4)
sec <- (data[, "duration_ms"])/1000

data$year <- year
data$sec <- sec

plot(aggregate(data[, "sec"], list(data$year), mean), main="Average Length of published Songs over the years, Sample Size: 160k+ Songs", xlab="Years", ylab="Seconds")
