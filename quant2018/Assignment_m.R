library(tidyverse)

Seocho <- read.csv("서울특별시_서초구_공중화장실_20180711.csv")

# 데이터가공 -------------------------------------------------------------------
Seocho <- select(Seocho, -c("소재지도로명주소","남녀공용화장실여부", "관리기관명", "전화번호", "개방시간", 
                            "설치년도", "위도", "경도", contains("어린이"), contains("장애인"), 
                            "데이터기준일자"))
Seocho <- mutate(Seocho, 남성용.대소변기수 = 남성용.소변기수 + 남성용.대변기수)
Seocho$소재지지번주소_dong <- substr(as.character(Seocho$소재지지번주소), 11, 14)

Seocho <- Seocho[!duplicated(Seocho$화장실명), ]
str(Seocho)


# 단변량 분석 ------------------------------------------------------------------


#범주형, 막대그래프
with(Seocho, table(구분))
with(Seocho, table(소재지지번주소_dong))
x <- table(Seocho$소재지지번주소_dong)
y <- x[order(x)]


#수치형, 히스토그램, 상자그림
with(Seocho, hist(남성용.대소변기수, breaks=20, xlim=c(0,40), labels = T))
with(Seocho, hist(여성용.대변기수, breaks=20, xlim=c(0,30), labels = T))

with(Seocho, summary(남성용.대소변기수))
with(Seocho, summary(여성용.대변기수))

filter(Seocho, 남성용.대소변기수 > 10)
filter(Seocho, 여성용.대변기수 > 6)



# 이변량 분석 ------------------------------------------------------------------


#구분과 동주소(범주,범주)
x3 <- with(Seocho, xtabs(~구분 + 소재지지번주소_dong))
barplot(x3, main= "동에 따른 화장실구분", legend = T)


#수치형
with(Seocho, plot(여성용.대변기수 ~ 남성용.대소변기수))
with(Seocho, sunflowerplot(여성용.대변기수 ~ 남성용.대소변기수, xlim = c(0,40), ylim = c(0,40)))
abline(0,1, col="blue")
with(Seocho, lines(lowess(남성용.대소변기수, 여성용.대변기수), col = "brown"))























