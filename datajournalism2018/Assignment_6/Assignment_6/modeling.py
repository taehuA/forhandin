class Model(object):

    def __init__(self, data):
        self.data = data

    def modeling(self):
        temp_max = float(self.data)

        precision = 244.3 + 2.1*(temp_max)
        return precision
