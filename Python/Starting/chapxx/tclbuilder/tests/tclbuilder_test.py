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
                "materials.param1.attr1": [1, 4, 10],
                "materials.param1.attr2": [2, 3, 20],
                "materials.param2.attr1": [3, 2, 30],
                "materials.param2.attr2": [4, 1, 40]
            }
        }

    def test_build(self, input):
        testee = TclBuilder()
        actual = testee.build(input)
        actual = list(map(lambda l: l[:-1] if l.endswith("\n") else l, actual)) # remove \n
        expected = [
            "set materials [list /org/ /sil/ /ox/]",
            "",
            "set param1_attr1s [list 1 4 10]",
            "",
            "set param1_attr2s [list 2 3 20]",
            "",
            "set param2_attr1s [list 3 2 30]",
            "",
            "set param2_attr2s [list 4 1 40]",
            "",
            "foreach m $materials p1a1 $param1_attr1s p1a2 $param1_attr2s {",
            "    set l [join [list $m \":\" $p1a1 \",\" $p1a2]]",
            "    puts $l",
            "}",
            "",
            "foreach mo $materials p2a1 $param2_attr1s {",
            "    foreach mi $materials p2a2 $param2_attr2s {",
            "        set m_prod [join [list $mo \"+\" $mi \"+\" $p2a1 \"=\" $mi \"+\" $mo \"+\" $p2a2]]",
            "        puts $m_prod",
            "    }",
            "}"
        ]
        print("A", actual)
        assert actual == expected