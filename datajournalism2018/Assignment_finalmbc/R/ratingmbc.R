library(tidyverse)


# 2017 데이터정리 --------------------------------------------------------------
mbc2017 <- read.csv("ratingdata2017.csv")
data_long <- gather(mbc2017, month, rating, m1:m12) %>% na.omit()
data_long$month <- gsub("m","",data_long$month) %>% as.numeric()
summary(data_long)


# 무한도전 --------------------------------------------------------------------
data_muhan <- subset(data_long, name == "무한도전") %>% select(month, rating)
data_muhan$month <- as.numeric(data_muhan$month)
ggplot(data_muhan, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2017 무한도전") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))

# 나혼자산다 -------------------------------------------------------------------
data_honza <- subset(data_long, name == "나혼자산다") %>% select(month, rating)
data_honza$month <- as.numeric(data_honza$month)
ggplot(data_honza, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2017 나혼자산다") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))

# 복면가왕 --------------------------------------------------------------------
data_bokga <- subset(data_long, name == "복면가왕") %>% select(month, rating)
data_bokga$month <- as.numeric(data_bokga$month)
ggplot(data_bokga, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2017 복면가왕") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))

# 라디오스타 -------------------------------------------------------------------
data_radio <- subset(data_long, name == "라디오스타") %>% select(month, rating)
data_radio$month <- as.numeric(data_radio$month)
ggplot(data_radio, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2017 라디오스타") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))



# 2016 데이터정리 ---------------------------------------------------------------
mbc2016 <- read.csv("ratingdata2016.csv")
data_long <- gather(mbc2016, month, rating, m1:m12) %>% na.omit()
data_long$month <- gsub("m","",data_long$month) %>% as.numeric()
summary(data_long)

#무한도전
data_muhan <- subset(data_long, name == "무한도전") %>% select(month, rating)
data_muhan$month <- as.numeric(data_muhan$month)
ggplot(data_muhan, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2016 무한도전") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))

#복면가왕
data_bokga <- subset(data_long, name == "복면가왕") %>% select(month, rating)
data_bokga$month <- as.numeric(data_bokga$month)
ggplot(data_bokga, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2016 복면가왕") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))

#라디오스타
data_radio <- subset(data_long, name == "라디오스타") %>% select(month, rating)
data_radio$month <- as.numeric(data_radio$month)
ggplot(data_radio, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2016 라디오스타") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))


# 2015 데이터정리 --------------------------------------------------------------
mbc2015 <- read.csv("ratingdata2015.csv")
data_long <- gather(mbc2015, month, rating, m1:m12) %>% na.omit()
data_long$month <- gsub("m","",data_long$month) %>% as.numeric()
summary(data_long)

#무한도전
data_muhan <- subset(data_long, name == "무한도전") %>% select(month, rating)
data_muhan$month <- as.numeric(data_muhan$month)
ggplot(data_muhan, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2015 무한도전") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))

#라디오스타
data_radio <- subset(data_long, name == "라디오스타") %>% select(month, rating)
data_radio$month <- as.numeric(data_radio$month)
ggplot(data_radio, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2015 라디오스타") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))

#복면가왕
data_bokga <- subset(data_long, name == "복면가왕") %>% select(month, rating)
data_bokga$month <- as.numeric(data_bokga$month)
ggplot(data_bokga, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2015 복면가왕") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))

#마리텔
data_my <- subset(data_long, name == "마리텔") %>% select(month, rating)
data_my$month <- as.numeric(data_my$month)
ggplot(data_my, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2015 마리텔") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))


# 2018 데이터정리 --------------------------------------------------------------
mbc2018 <- read.csv("ratingdata2018.csv")
data_long <- gather(mbc2018, month, rating, m1:m12) %>% na.omit()
data_long$month <- gsub("m","",data_long$month) %>% as.numeric()
summary(data_long)

#나혼자산다
data_honza <- subset(data_long, name == "나혼자산다") %>% select(month, rating)
data_honza$month <- as.numeric(data_honza$month)
ggplot(data_honza, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2018 나혼자산다") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))

#전지적참견시점
data_gensei <- subset(data_long, name == "전지적참견") %>% select(month, rating)
data_gensei$month <- as.numeric(data_gensei$month)
ggplot(data_gensei, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2018 전지적참견") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))

#복면가왕
data_bokga <- subset(data_long, name == "복면가왕") %>% select(month, rating)
data_bokga$month <- as.numeric(data_bokga$month)
ggplot(data_bokga, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2018 복면가왕") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))

#라디오스타
data_radio <- subset(data_long, name == "라디오스타") %>% select(month, rating)
data_radio$month <- as.numeric(data_radio$month)
ggplot(data_radio, aes(x=month, y=as.numeric(rating))) + geom_col() + 
  xlab("월") + ylab("월평균 시청률") + ggtitle("2018 라디오스타") + geom_label(aes(label=round(rating,2))) + 
  scale_x_continuous(breaks=seq(12))
