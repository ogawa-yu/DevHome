import pytest
import logging
from tclbuilder import *

class TestTclBuilder(object):

    @pytest.fixture(scope="function", autouse=True)
    def input(self):
        return {
            "materials": ["/org/", "/sil/", "/ox/"],
            "params": {
                "type": "seq1",
                "materials": ["/org/", "/sil/", "/ox/"],
                "param1": 100,
                "materials.param1.attr1": [1, 0, 1],
                "materials.param1.attr2": [2, 0, 0],
                "materials.param2.attr1": [3, 0, 0],
                "materials.param2.attr2": [4, 0, 0]
            }
        }

    def test_build(self, input):
        testee = TclBuilder()
        actual = testee.build(input)
        actual = list(map(lambda l: l[:-1], actual)) # remove \n
        expected = [
            "set materials [list /org/ /sil/ /ox/]",
            "",
            "set param1_attr1s [list 1 0 1]",
            "",
            "set param1_attr2s [list 2 0 0]",
            "",
            "set param2_attr1s [list 3 0 0]",
            "",
            "set param2_attr2s [list 4 0 0]",
            "",
            "puts $param1_attr1s",
            "puts $param1_attr2s",
            "puts $param2_attr1s",
            "puts $param2_attr2s"
        ]
        print("A", actual)
        assert actual == expected