def get_description():
    from random import choice
    possibilities = get_possibilities()
    return choice(possibilities)

def get_possibilities():
    return ['rain', 'snow', 'sleet', 'fog', 'sun', 'who knows']