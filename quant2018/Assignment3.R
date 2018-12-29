car_accident <- read.csv("car_accident.csv", fileEncoding="UTF-8")
car_accident
colnames(car_accident)[1] <- "index"
car_accident
car_accident$num_injury <- (car_accident$serious_injury + car_accident$minor_injury + car_accident$only_report)
car_accident
car_accident$category[order(car_accident$num_death, decreasing = T)]
car_accident$category[order(car_accident$num_injury, decreasing = T)]
car_accident$ratio_death <- (car_accident$num_death / car_accident$occurrence)
car_accident$ratio_injury <- (car_accident$num_injury / car_accident$occurrence)
car_accident
car_accident$category[order(car_accident$ratio_death, decreasing = T)]
car_accident$category[order(car_accident$ratio_injury, decreasing = T)]
x <- mean(car_accident$num_death)
y <- sum(car_accident$num_death) / sum(car_accident$occurrence)
subset(car_accident, num_death > x)
subset(car_accident, ratio_death > y)
subset(car_accident, ratio_death < y)
subset(car_accident, (ratio_death < y) & (ratio_injury > (sum(car_accident$num_injury) / sum(car_accident$occurrence))))
