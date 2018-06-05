import requests
from flask import Blueprint

api = Blueprint('hello_api', __name__, url_prefix='/api')

@api.route('/hello')
def hello():
    return "Hello blueprint"

@api.route('/own')
def own_hello():
    response = requests.get('http://localhost:5000/api/hello')
    return response.text
