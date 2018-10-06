from flask import Flask
from app import settings
from app.apis import api
from app.models import db


app = Flask(__name__, instance_relative_config=True)

def configure_app(app: Flask):
    app.config.from_pyobject("settings.Config")


def initialize_app(app: Flask):
    configure_app(app)
    api.init_app(app)
    db.init_app(app)
    db.create_all(app=app)


def main():
    initialize_app(app)
    app.run(host="0.0.0.0", debug=settings.Config.DEBUG)


if __name__ == "__main__":
    main()
