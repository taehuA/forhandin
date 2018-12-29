class Mood(object):

    GENERIC   = 1
    HIGHER = 2
    LOWER  = 3

    def decision(self, data1, data2):
        if data1 - data2 >= 1:
            return self.HIGHER

        if data1 - data2 < -1:
            return self.LOWER

        else:
            return self.GENERIC
