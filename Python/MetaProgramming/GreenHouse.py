

class Event(object):
    events = list()

    def __init__(self, action, time):
        self._action = action
        self._time = time
        Event.events.append(self)

    def run(self):
        print("%.2f: %s" % (self._time, self._action))

    @staticmethod
    def run_events():
        Event.events.sort(key=lambda e: e._time)
        for e in Event.events:
            e.run()


def create_classname(description):
    return "".join(x.capitalize() for x in description.split())


def create_mc(description):
    """ Create subclass using the 'type' metaclass
    """
    class_name = create_classname(description)

    def __init__(self, time):
        Event.__init__(self, description + " [mc]", time)

    globals()[class_name] = \
        type(class_name, (Event, ), dict(__init__=__init__))


if __name__ == '__main__':
    descriptions = ["Light on", "Light off", "Water on", "Water off",
                    "Thermostat night", "Thermostat day", "Ring bell"]
    initializations = "ThermostatNight(5.00); LightOff(2.00); \
        WaterOn(3.30); WaterOff(4.45); LightOn(1.00); \
        RingBell(7.00); ThermostatDay(6.00)"
    [create_mc(dsc) for dsc in descriptions]
    exec(initializations, globals())
    Event.run_events()
