import os, json
import logging
import atexit
from flask import Flask, request

app = Flask(__name__)
app.config['RUNTIME_DATA'] = dict()

if os.path.exists('data.json'):
    app.config.from_json('data.json')

@app.route('/index')
def index():
    return 'hello flask'

@app.route('/conf/<id>')
def conf(id):
    app.config['RUNTIME_DATA'][id] = "test"
    return "id={}".format(id)

def teardown():
    print("\n[shutdown server]")
    print(app.config)
    logging.info("tear down")
    with open(os.path.abspath('data.json'), 'w') as fp:
        save_data = dict(
            RUNTIME_DATA=app.config['RUNTIME_DATA']
        )
        fp.writelines(json.dumps(save_data))


if __name__ == '__main__':
    atexit.register(teardown)
    app.run()

