import requests
from flask import Blueprint, current_app, jsonify
from flask_restplus import Api

api = Blueprint('hello_api', __name__, url_prefix='/api')

@api.route('/script', methods=['POST'])
def script():
    
