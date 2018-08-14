import requests
from flask import Blueprint, current_app, jsonify

api = Blueprint('hello_api', __name__, url_prefix='/api')

@api.route('/hello')
def hello():
    return "Hello blueprint"

@api.route('/own')
def own_hello():
    url = 'http://{}:{}/api/hello'.format(
        current_app.config['HOST'],
        current_app.config['PORT'])
    response = requests.get(url)
    return response.text

@api.route('/conf')
def conf():
    return str(current_app.config)