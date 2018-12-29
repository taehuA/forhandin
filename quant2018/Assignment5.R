#파일 읽기
Income <- read.csv("gdp_per_capita.csv", fileEncoding = "UTF-8")
Life_exp <- read.csv("life_expectancy.csv", fileEncoding = "UTF-8")


#데이터 기본정보
str(Income)
str(Life_exp)


###관심연도 선택, 결측치 삭제
library(tidyverse)

life_by_income <- left_join(Life_exp, Income, by = c("Life.expectancy" = "GDP.per.capita")) %>% 
  rename(Country = Life.expectancy, life1945 = X1945.x, life2015 = X2015.x, 
         gdp1945 = X1945.y, gdp2015 = X2015.y) %>% 
  select(Country, life1945, life2015, gdp1945, gdp2015) %>% na.omit


#산점도 그리기
with(life_by_income, plot(life1945~gdp1945))
with(life_by_income, plot(life2015~gdp2015))


#로그스케일
ggplot(life_by_income, aes(gdp1945, life1945)) + geom_point() + scale_x_log10()
ggplot(life_by_income, aes(gdp2015, life2015)) + geom_point() + scale_x_log10()


#한 화면에 두 산점도
par(mfrow = c(2, 1))
with(life_by_income, plot(life1945~log(gdp1945), xlim = c(5,12), ylim = c(0,100)))
with(life_by_income, plot(life2015~log(gdp2015), xlim = c(5,12), ylim = c(0,100)))


#남한만 색칠해보기
life_by_income2 <- mutate(life_by_income, Korea = Country == "South Korea")
life_by_income2$Korea <- as.factor(life_by_income2$Korea)

par(mfrow = c(2, 1))
with(life_by_income2, plot(life1945~log(gdp1945), xlim = c(5,12), ylim = c(0,100), col = Korea))
with(life_by_income2, plot(life2015~log(gdp2015), xlim = c(5,12), ylim = c(0,100), col = Korea))
