class LogicGate:
    def __init__(self, w1, w2, theta):
        self.w1 = w1
        self.w2 = w2
        self.theta = theta
    def output(self, x1, x2):
        return (self.w1*x1 + self.w2*x2) > self.theta
