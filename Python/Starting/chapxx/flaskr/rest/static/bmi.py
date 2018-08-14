#!/usr/bin/env python
# -*- conding: utf-8 -*-

from browser import document, alert

def calc_bmi():
    weight = float(document["weight"].value)
    height = float(document["height"].value)

    bmi = str(weight/height**2)
    result = document["result"]
    result.text = bmi
    alert(bmi)

calc_button = document["calc"]
calc_button.bind("click", calc_bmi)
