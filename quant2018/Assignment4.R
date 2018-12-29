library(tidyverse)
library(moments)

x <- read.csv("pop_by_country.csv", fileEncoding = 'UTF-8')
x <- select(x,Country.Name,Country.Code,X2015)
x <- rename(x, country_name = Country.Name, country_code = Country.Code, pop2015 = X2015)

y <- read.csv("metadata1.csv", fileEncoding = 'UTF-8')
y <- select(y, Country.Code, Region)
y <- rename(y, country_code = Country.Code, region = Region)
xy <- left_join(x,y)
xy <- na.omit(xy)
xy <- filter(xy, region != "")
xy <- select(xy, -(region))


#결측값을 먼저 지워야겠는데?

summary(xy)
quantile(x$pop2015)
mean(x$pop2015)
sd(x$pop2015)
skewness(x$pop2015)
kurtosis(x$pop2015)

boxplot(xy$pop2015)
hist(xy$pop2015)

ggplot(x, aes(pop2015)) + geom_histogram(bins = 5)
ggplot(x, aes(1,pop2015)) + geom_boxplot()
