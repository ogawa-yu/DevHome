import atexit
from flask import Flask, render_template
import hello
from flask_cors import CORS

app = Flask(__name__)
app.config['RUNTIME_DATA'] = dict()
app.register_blueprint(hello.api)
app.register_blueprint(hello.views)
CORS(app)

@app.route("/")
def index():
    return render_template("index.html")

def teardown():
    print("\n[shutdown server]")
    

if __name__ == '__main__':
    atexit.register(teardown)
    app.run(threaded=True)

