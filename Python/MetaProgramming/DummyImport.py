import importlib
from dummyclass import Sample

class Sample(object):
    def say(self):
        return "dummy"

#__import__('dummyclass', fromlist=['Sample'])

import SampleCaller

