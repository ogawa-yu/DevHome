def And(x1, x2) :
    w1, w2, theta = 0.5, 0.5, 0.7
    output = w1*x1 + w2*x2
    return (output > theta)
