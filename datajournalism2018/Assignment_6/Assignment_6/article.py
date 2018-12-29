class Article(object):

    GENERIC   = 1
    HIGHER = 2
    LOWER  = 3


    def __init__(self, template, w_events, model1, y_events, model2):
        self.template = template
        self.weather = w_events
        self.model1 = model1
        self.model2 = model2
        self.y_events = y_events

    def generate(self):
        if self.template == self.HIGHER:
            article = "응급실에서 일하는 당신! 오늘은 어제보다 고생하시겠어요. 오늘 대전의 최고기온은 {}도로 예상되는 응급실 환자는 어제보다 많은 {}명 입니다. 참고로 어제의 최고기온은 {}도 였으며 어제 예상 응급실방문 인원은 {}명 이었습니다".format(self.weather.temp_max, self.model1, self.y_events, self.model2)


        elif self.template == self.LOWER:
            article = "응급실에서 일하는 당신! 오늘은 조금 편할 수 있을까요? 오늘 대전의 최고기온은 {}도로 예상되는 응급실 환자는 어제보다 적은 {}명 입니다. 참고로 어제의 최고기온은 {}도 였으며 어제 예상 응급실방문 인원은 {}명 이었습니다".format(self.weather.temp_max, self.model1, self.y_events, self.model2)

        else: #GENERIC
            article = "뭘 기대하셨어요 응급실에서, 어제나 오늘이나 바쁜건 똑같아요. 오늘 대전의 최고기온은 {}도로 예상되는 응급실 환자는 어제랑 비슷한 {}명 입니다. 참고로 어제의 최고기온은 {}도 였으며 어제 예상 응급실방문 인원은 {}명 이었습니다".format(self.weather.temp_max, self.model1, self.y_events, self.model2)


        return article
