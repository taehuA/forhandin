import urllib.request
from urllib import parse
import json
from bs4 import BeautifulSoup

class Crawler(object):

    def __init__(self, city="Seoul", region=None):
        self.city = city   

    def weather_fetch(self, city="Daejeon"):
        self.city = city

        app_key = "be4a0f29429b9fb3f73bee55d838449c"
        loc = self.city
        url = "http://api.openweathermap.org/data/2.5/weather?q={}&units=metric&appid={}".format(loc, app_key)

        with urllib.request.urlopen(url) as response:
            self.weather_data = json.loads(response.read().decode("utf-8"))

        return self.weather_data
    
    
    def yesterday_fetch(self):

        url = "http://m.kma.go.kr/m/nation/yesterday.jsp?ele=1"

        with urllib.request.urlopen(url) as url:
            doc = url.read()
            soup = BeautifulSoup(doc, "html.parser")
            yesterdays = soup.find_all("dl", class_="po2_133")
            for temp_max in yesterdays:
                self.yesterday_data = temp_max.span.text.strip()

        return self.yesterday_data

