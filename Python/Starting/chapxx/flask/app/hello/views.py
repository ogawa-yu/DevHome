import os
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import mpld3
from .mpld3hooks import JavascriptPlugin
from mpld3 import plugins
import seaborn; seaborn.set()
from flask import Blueprint, render_template

views = Blueprint('hello', __name__, template_folder='templates')

def get_css():
    with open(from_api_root('static/figure.css'), "r") as fp:
        return ''.join(fp.readlines())

def from_api_root(relpath):
  return os.path.join(views.root_path, relpath)

@views.route('/hello')
def hello():
    df = pd.DataFrame(data=np.random.randn(20,8),columns=list('abcdefgh'))
    fig, ax = plt.subplots()
    ax.set_xlabel('a')
    ax.set_ylabel('b')
    ax.set_title('hoge')

    points = ax.plot(df.a, df.b, 'o', mec='k', ms=15, mew=1, alpha=.6)
    labels = []
    for i in df.a.items():
        label = df.ix[[i[0]], :].T
        label.columns = ['Data List']
        labels.append(str(label.to_html()))
    tooltip = plugins.PointHTMLTooltip(points[0], labels, voffset=10, hoffset=10, css=get_css())
    plugins.connect(fig, tooltip)
    plugins.connect(fig, JavascriptPlugin(from_api_root('static/plugins/HelloWorld.js'), 'click_info', points[0]))

    with open(from_api_root('templates/figure.html'), "w") as fw:
        fw.writelines(mpld3.fig_to_html(fig, figid="figure"))

    return render_template('hello.html')

@views.route('/figure')
def figure():
    return render_template('figure.html')
