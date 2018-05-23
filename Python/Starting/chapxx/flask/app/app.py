import atexit
from flask import Flask
import hello

app = Flask(__name__)
app.config['RUNTIME_DATA'] = dict()

app.register_blueprint(hello.api)
app.register_blueprint(hello.views)

def teardown():
    print("\n[shutdown server]")


if __name__ == '__main__':
    atexit.register(teardown)
    app.run()

