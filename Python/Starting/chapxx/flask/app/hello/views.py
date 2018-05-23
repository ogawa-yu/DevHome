import os
from flask import Blueprint, render_template

views = Blueprint('hello', __name__, template_folder='templates')

def template_folder():
    return os.path.abspath(os.path.join(views.name, views.template_folder))

@views.route('/hello')
def hello():
    #return render_template(os.path.join(template_folder(), 'hello.html'))
    return render_template('hello.html')
