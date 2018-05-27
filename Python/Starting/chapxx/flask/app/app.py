import atexit
from flask import Flask, render_template
import hello

app = Flask(__name__)
app.config['RUNTIME_DATA'] = dict()
app.config.from_object()
app.register_blueprint(hello.api)
app.register_blueprint(hello.views)

@app.route("/")
def index():
    return render_template("index.html")

def teardown():
    print("\n[shutdown server]")
    

if __name__ == '__main__':
    atexit.register(teardown)
    app.run()

