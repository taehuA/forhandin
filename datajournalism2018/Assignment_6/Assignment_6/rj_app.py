from crawler import Crawler
from events import Events
from mood_detect import Mood
from article import Article
from modeling import Model

crawler = Crawler()

# 데이터 수집
weather_data = crawler.weather_fetch()
yesterday_data = crawler.yesterday_fetch()
print(weather_data)
print(yesterday_data)

# 날씨 이벤트 처리
weather_events = Events(weather_data)
weather_events.process_events()
weather_info = (weather_events.temp_max)

# 모델링
now_model = Model(weather_info)
yes_model = Model(yesterday_data)
today_visitor = now_model.modeling()
yesterday_visitor = yes_model.modeling()

# Mood decision
mood = Mood()
template = mood.decision(today_visitor, yesterday_visitor)
print(template)

# 기사생성
article = Article(template, weather_events, today_visitor, yesterday_data, yesterday_visitor)
print(article.generate())
f = open("better_than_yesterday.txt", "w", encoding = "UTF-8")
f.write(article.generate())
f.close()
