import json
from datetime import datetime

class Events(object):

    def __init__(self, data):
        self.data = data

    def process_events(self):
        self.time_observation = datetime.fromtimestamp(self.data["dt"])
        self.temp_max = self.data["main"]["temp_max"]

